module Helpers
  def script_url
    ENV['SCRIPT_URL'] || "https://ondemand-dg.playground.klarna.com"
  end

  def locale
    params[:locale] ? params[:locale] : "sv"
  end

  def in_app
    params[:in_app] ? params[:in_app] : true
  end
end
