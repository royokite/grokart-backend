class CategoriesController < ApplicationController
    #skip_before_action :authenticate_user

    def index
        render json: Category.all
    end

    def show
        category = Category.find_by(id: params[:id])
        if category
            render json: category, include: :product
        else
            render json: {error: "Category not found"}, status: :not_found
        end
    end
end
