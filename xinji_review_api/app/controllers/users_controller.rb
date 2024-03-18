class UsersController < ApplicationController
    before_action :set_user, only: [:login]

    def login
        return render(json: {'error': '登陆失败'}, status: 401) unless @user.password == params[:password]

        @current_user = @user
        token = jwt_encode_user(@user)
        render_200 data: { token: token }
    end

    private

    def set_user
        @user = @current_user || User.find_by(name: params[:name])
    end
end
