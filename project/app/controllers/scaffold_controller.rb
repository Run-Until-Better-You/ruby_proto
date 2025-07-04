class ScaffoldController < ApplicationController
    # 이 컨트롤러를 사용하게 되면 공통적으로 실행할 동작을 이렇게 설정 가능 
    # before_action :authenticate_user!
    def initialize(names='ehhh')
        @names = names
    end
    def role
        @id = params[:id]
    end
    def back
        # @product = params[:id]
        # render json: @product
        render json: {ss:'dood'}
        # render json: {status:"ok",user:'user'}

        # render json: {error:"Not found"}, status: :not_found
        
        # head :no_content # 204 No Content
    end
end
