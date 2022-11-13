class ApplicationController < ActionController::API
  include ActionController::Cookies

   def redirect_if_not_logged_in
        redirect_to '/', alert: "Please log in or create and account." unless logged_in?
    end
end
