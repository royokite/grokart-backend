class ProductsController < ApplicationController
    # before_action :set_product, only: [:show, :edit, :update, :destroy]
    # before_filter :authenticate_user!, :except => [:show]
    # # GET /products
    # # GET /products.json
    # def index
    #     @products = Product.all
    #     @categories = Category.all
    #     @brands = []
    #     @products.each do |product|
    #         if @brands.include?(product.brand) == false
    #             @brands.push(product.brand)
    #         end
    #     end
    # end

    # # GET /products/1
    # # GET /products/1.json
    # def show
    #     @categories = Category.all
    #     @brands = []
    #     Product.all.each do |product|
    #     if @brands.include?(product.brand) == false
    #         @brands.push(product.brand)
    #         end
    #     end
    # end

    # private
    # # Use callbacks to share common setup or constraints between actions.
    # def set_product
    #   @product = Product.find(params[:id])
    # end

    # # Only allow a list of trusted parameters through.
    # def product_params
    #   params.require(:product).permit(:product_id, :price, :description, :count, :user_id, :image, :quantity)
    # end

    def index
        render json: Product.all, status: :ok
    end

    def show
        product = find_product        
        if product
            render json: product, status: :ok
        else
            render json: { error: "Product not found!" }, status: :not_found
        end
    end

    def create
        product = Product.create!(product_params)
        render json: product, status: :created
    end

    def update
        product = find_product
        product.update!(product_params)
        render json: product, status: :accepted
    end

    def destroy
        product = find_product
        product.destroy
        head :no_content
    end

    private

    def find_product
        Product.find(params[:id])
    end

    def product_params
        params.permit(:category_id, :name, :price, :count, :description, :image)
    end

end
