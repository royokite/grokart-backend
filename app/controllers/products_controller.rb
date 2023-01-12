class ProductsController < ApplicationController
    before_action :set_product, only: [:show, :edit, :update, :destroy]
    before_filter :authenticate_user!, :except => [:show]
    # GET /products
    # GET /products.json
    def index
        @products = Product.all
        @categories = Category.all
        @brands = []
        @products.each do |product|
            if @brands.include?(product.brand) == false
                @brands.push(product.brand)
            end
        end
    end

    # GET /products/1
    # GET /products/1.json
    def show
        @categories = Category.all
        @brands = []
        Product.all.each do |product|
        if @brands.include?(product.brand) == false
            @brands.push(product.brand)
            end
        end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:product_id, :price, :description, :count, :user_id, :image, :quantity)
    end
end
end
