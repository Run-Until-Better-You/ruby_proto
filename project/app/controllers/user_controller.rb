# class UsersController < ApplicationController
#   def create
#     user = User.new(user_params)
#     if user.save
#       render json: { id: user.id, message: '회원가입 완료' }, status: :created
#     else
#       render json: { errors: user.errors }, status: :unprocessable_entity
#     end
#   end

#   private
#   def user_params
#     params.require(:user).permit(:email, :password)
#   end
# end
