module Helpers
  def script_url
    ENV['SCRIPT_URL'] || "http://server.dev"
  end

  def locale
    params[:locale] ? params[:locale] : "sv"
  end
end
