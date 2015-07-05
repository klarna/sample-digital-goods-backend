require 'base64'
require 'sinatra/base'
require 'sinatra/json'

if ENV['RACK_ENV'] == 'development'
  require 'sinatra/reloader'
  require 'pry'
end

require_relative './helpers.rb'
require_relative './jsonp.rb'
require_relative './redirect_to.rb'
require_relative './backend.rb'

$stdout.sync = true

class Backend < Sinatra::Base
  include Helpers

  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  use JSONP
  use RedirectTo
end

run Backend.new
