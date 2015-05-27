require 'base64'
require 'sinatra/base'
require 'sinatra/json'

if ENV['RACK_ENV'] == 'development'
  require 'sinatra/reloader'
  require 'pry'
end

require_relative './backend.rb'

$stdout.sync = true

class Backend < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  helpers do
    def script_url
      ENV['SCRIPT_URL'] || "http://server.dev"
    end
  end
end

run Backend.new
