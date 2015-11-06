class User

  def self.from_session(session)
    session[:user] ? User.new(session, session[:user]) : nil
  end

  def self.create session, email
    session[:user] = {email: email}
    new session, email: email
  end

  attr_reader :token, :email, :subscribed, :read
  def initialize(session, email:, subscribed: false, read: Set.new)
    @session = session
    @email = email
    @subscribed = subscribed
    @read = read
  end

  def read_count
    read.count
  end

  def name
    email.split('@').shift
  end

  def read! article
    @read << article.id
    # Simulates saving read articles in a database
    @session[:user][:read] = @read
  end

  def can_access_content?(article)
    @session[:user][:read].include? article.id or subscribed
  end

  def subscribed
    @session[:user][:subscribed]
  end

  def subscribe!
    # Simulates saving the purchase in a database
    @session[:user][:subscribed] = true
  end
end
