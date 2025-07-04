class BlogController < ApplicationController
    def index
        # @product = Product.find(params[:id])
        @product = params[:id]
    end
    def print
        return "#{@product}"
    end
end
