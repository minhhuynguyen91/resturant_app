class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end


require "#{Rails.root}/app/services/send_sms_twilio.rb"
