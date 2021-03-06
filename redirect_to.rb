class RedirectTo < Sinatra::Base
  include Helpers

  # Make purches and redirect to thank you page
  post '/purchase_and_redirect' do
    @user = User.create(session, params[:userToken], 'user@email.com') unless @user

    purchase = Klarna::Purchase.new(
      user_token:    @user.token,
      reference:     'subscription',
      name:          'Monthly subscription',
      amount:        4900,
      tax:           600,
      origin_proof:  params[:origin_proof]
    )

    success, response_data, response_code = purchase.order!
    if success
      @user.subscribe!

      user_token, order_reference = extract_user_token_and_order_reference(response_data[1...-1])
      return json redirect_to: "/thank_you?user_token=#{user_token}&order_reference=#{order_reference}&kdid=#{params[:kdid]}"
    else
      status response_code and return json data: {}, klarna_response: response_data
    end
  end

  get '/thank_you' do
    @user_token = params[:user_token]
    @order_reference = params[:order_reference]
    @kdid = params[:kdid]
    erb :thank_you
  end

  get '/redirect_to' do
    @articles = Article.all
    @article = Article.find('1')
    @user.read!(@article) if @user
    @action = '/purchase_and_redirect'

    @jsonp = true
    erb :article
  end

  private

  def extract_user_token_and_order_reference(url_string)
    url_string.match(/.+users\/(.+)\/orders\/(.+)/)[1..2]
  end
end
