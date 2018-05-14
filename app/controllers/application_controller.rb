class ApplicationController < ActionController::Base
  include LcdBlink
  protect_from_forgery
end
