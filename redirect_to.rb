class RedirectTo < Sinatra::Base
  include Helpers

  # Handle JSONP (GET) requests to '/identification'
  # - Creates a user based on the userToken provided by Klarna
  # - Accumulates current user's read articles count
  # - Returns the paid content part of the article wrapped in the given callback function
  post '/purchase' do
    @user = User.create(session, params[:userToken], 'user@email.com') unless @user

    purchase = Klarna::Purchase.new(
      user_token:    @user.token,
      reference:     'subscription',
      name:          'Monthly subscription',
      amount:        99,
      tax:           6,
      origin_proof:  params[:origin_proof]
    )

    authorization_response = purchase.authorize!
    if authorization_response.success?
      @user.subscribe!
      return json redirect_to: "/thank_you"
    else
      status 500
      return json klarna_response: authorization_response.data
    end
  end

  get '/thank_you' do
    erb :thank_you
  end

  get '/redirect_to' do
    @articles = Article.all
    @article = Article.find('1')
    @user.read!(@article) if @user

    @jsonp = true
    erb :article
  end
end
