require "rest-client"

module Klarna
  class Purchase
    def initialize(user_token:, reference:, name:, amount:, tax:, origin_proof:)
      @user_token = user_token
      @reference = reference
      @name = name
      @amount = amount
      @tax = tax
      @origin_proof = origin_proof
    end

    def order!
      order_params = {
        currency:         "SEK",
        reference:        @reference,
        name:             @name,
        order_amount:     @amount,
        order_tax_amount: @tax,
        capture:          "false",
        origin_proof:     @origin_proof
      }

      od_url = ENV['ON_DEMAND_URL'] || 'https://inapp.playground.klarna.com'
      order_url =  "#{od_url}/api/v1/users/#{@user_token}/orders"

      resource_params = [order_url]
      resource_params += [API_KEY, API_SECRET] if order_url.match(/^https/)

      resource = RestClient::Resource.new(*resource_params)

      resource.post(order_params) do |response|
        success = response.code < 300
        [success, success ? response.body : JSON.parse(response.body), response.code]
      end
    end
  end
end
