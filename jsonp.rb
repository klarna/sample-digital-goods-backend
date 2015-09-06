class JSONP < Sinatra::Base
  include Helpers

  # Handle JSONP (GET) requests to '/registration'
  # - Creates a user based on the userToken provided by Klarna
  # - Accumulates current user's read articles count
  # - Returns the paid content part of the article wrapped in the given callback function
  get '/registration' do
    callback = params.delete('klarnaCallback')

    @user = User.create(session, params[:userToken], 'user@email.com')
    article = Article.find(params[:article_id])
    @user.read!(article)

    content_type "application/javascript"
    %[window.#{callback}(#{{data: article.paid_content}.to_json})]
  end

  get '/jsonp' do
    @articles = Article.all
    @article = Article.find('2')
    @user.read!(@article) if @user

    @jsonp = true
    erb :article
  end
end
