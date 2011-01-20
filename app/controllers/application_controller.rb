class ApplicationController < ActionController::Base
  protect_from_forgery
  @@access_token = nil
  @@forms = nil
end
