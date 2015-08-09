module Helpers
  def script_url
    ENV['SCRIPT_URL'] || "https://ondemand-dg.playground.klarna.com"
  end

  def locale
    params[:locale] ? params[:locale] : "sv"
  end
end
