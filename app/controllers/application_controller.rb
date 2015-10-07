class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  after_filter :set_csrf_cookie_for_ng

  private

    def set_csrf_cookie_for_ng
      cookies['XSRF-TOKEN'] = form_authenticity_token
    end

    def verified_request?
      # TODO: The NG CSRF token is cheked after the original verified_request? is cheked
      # this way, if the NG CSRF token is wrong, no exceptions is thrown.
      # chek this out (p.20)
      # from rails 4.2 the form_authenticity_token is masked.
      super || valid_authenticity_token?(session, request.headers['HTTP_X_XSRF_TOKEN'])
    end
end
