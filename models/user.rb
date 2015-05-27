class User
  # Number of free articles available to readers before they must subscribe
  FREE_ARTICLES_COUNT = 2

  def self.from_session(session)
    session[:user] ? User.new(session, session[:user]) : nil
  end

  def self.create session, token, email
    session[:user] = {token: token, email: email}
    new session, token: token, email: email
  end

  attr_reader :token, :email, :subscribed, :read
  def initialize(session, token:, email:, subscribed: false, read: Set.new)
    @session = session
    @email = email
    @token = token
    @subscribed = subscribed
    @read = read
  end

  def read_count
    read.count
  end

  def name
    email.split('@').shift
  end

  def read_all_free_articles?
    read_count > FREE_ARTICLES_COUNT
  end

  def read! article
    @read << article.id
    # Simulates saving read articles in a database
    @session[:user][:read] = @read
  end

  def can_access_content?
    !read_all_free_articles? or subscribed
  end

  def must_subscribe?
    !can_access_content?
  end

  def subscribe!
    # Simulates saving the purchase in a database
    @session[:user][:subscribed] = @subscribed = true
  end
end
