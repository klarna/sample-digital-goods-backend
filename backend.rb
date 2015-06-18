require_relative './models/article'
require_relative './models/user'
require_relative './models/klarna/purchase'

# Storing your actual Klarna credentials this way is a bad idea
API_KEY = 'test_d4ca9ed6-489b-42b3-8011-dacdcee0fdb6'
API_SECRET = 'test_87b858984787cf3fff2281e533a400ac7146d78f4a8b7af0709d673e70d744ec'

class Backend < Sinatra::Base

  # Fetches the user from the session if there is one, before all actions
  before do
    @user = User.from_session(session)
  end

  # This endpoind represents your home page
  get '/' do
    @articles = Article.all

    erb :home_page
  end

  # This endpoint displays an article and accumulates current user's count
  get '/article/:article_id' do
    @articles = Article.all
    @article = Article.find(params[:article_id])
    @user.read!(@article) if @user

    erb :article
  end

  # Handle POST requests to '/identification'
  # - Creates a user based on the userToken provided by Klarna
  # - Accumulates current user's read articles count
  # - Returns the paid content part of the article to be displayed by the onKlarnaSuccess method
  post '/identification' do
    @user = User.create(session, params[:userToken], 'user@email.com')
    article = Article.find(params[:article_id])
    @user.read!(article)

    return json data: article.paid_content
  end

  # Handle POST requests to '/purchase'
  # - Creates a purchase on Klarna's API
  # - If it succeeds, subscribe the user and returns the paid content to be displayed by the onKlarnaSuccess method
  # - If it fails returns the data, so the iframe knows how to handle it
  post '/purchase' do
    @user = User.create(session, params[:userToken], 'user@email.com') unless @user

    purchase = Klarna::Purchase.new(
      user_token: @user.token,
      reference:  'subscription',
      name:       'Monthly subscription',
      amount:     99,
      tax:        6
    )

    authorization_response = purchase.authorize!
    if authorization_response.success?
      @user.subscribe!
      article = Article.find(params[:article_id])
      return json data: article.paid_content
    else
      status 500
      return json klarna_response: authorization_response.data
    end
  end

  # Logs out the user
  get '/logout' do
    session.delete(:user)
    redirect back
  end

  def locale
    params[:locale] ? params[:locale] : "en"
  end
end
