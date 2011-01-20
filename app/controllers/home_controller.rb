require "net/https"
require "uri"

class HomeController < ApplicationController
  def home
    if user_signed_in?
      uri = URI.parse(request.env["omniauth.strategy"].client.site+"api/forms?access_token="+current_user.manastats_access_token)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      request = Net::HTTP::Get.new(uri.request_uri)
      response = http.request(request)
      @forms = ActiveSupport::JSON.decode(response.body)
    end
  end
end
