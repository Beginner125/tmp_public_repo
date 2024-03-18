class ApplicationController < ActionController::API
    include JwtConcern
    include Pundit::Authorization

    before_action :authenticate!

    rescue_from ActiveRecord::RecordNotFound do |exception|
        render json: {message: exception.message}, status: 404
    end

    def authenticate!
        token = request.headers["Authorization"].to_s.split[1] || params[:token]
        @current_user = jwt_decode_user(token) if token
    end       

    def render_200(data: {})
        render json: data, status: 200
    end
end
