class SessionsController < ApplicationController
    def index
        session[:session_hello] ||= "WWWorld"
        cookies[:cookies_hello] ||= "WWWorld"
        render json: { session: session, cookies: cookies.to_hash }
      end
end
