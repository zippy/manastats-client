Rails.application.config.middleware.use OmniAuth::Builder do
 provider :manastats, 'test_app', '12345'
end
#module OmniAuth
#  module Strategies
#    # tell OmniAuth to load our strategy
#    autoload :Manastats, 'lib/manastats'
#  end
#end