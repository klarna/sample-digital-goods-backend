require "rest-client"

module Klarna
  class Purchase
    class Response
      attr_reader :code, :body
      def initialize(response)
        @code = response.code
        @body = response.body
      end

      def success?
        code == 201
      end

      def data
        success? ? body : JSON.parse(body)
      end
    end

    def initialize(user_token:, reference:, name:, amount:, tax:, origin_proof:)
      @user_token = user_token
      @reference = reference
      @name = name
      @amount = amount
      @tax = tax
      @origin_proof = origin_proof
    end

    def authorize!
      order_params = {
        currency:         "SEK",
        reference:        @reference,
        name:             @name,
        order_amount:     @amount,
        order_tax_amount: @tax,
        capture:          "false",
        origin_proof:     @origin_proof
      }

      url =  "https://#{ENV['ON_DEMAND_HOST']}/api/v1/users/#{@user_token}/orders"

      resource = RestClient::Resource.new url, API_KEY, API_SECRET
      resource.post(order_params) do |response|
        Response.new(response)
      end
    end
  end
end
