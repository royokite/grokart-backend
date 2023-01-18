class CartsController < ApplicationController
    def index
        render json: Cart.all
    end

    def show
        cart = Cart.find_by(id: params[:id])
        if cart
            render json: cart, include: :product
        else 
            render json: {error: "Cart not found"}, status: :not_found
        end
    end

    def destroy
        cart = Cart.find_by(id: params[:id])
        cart.destroy
        render json: cart, status: :no_content

    end

    def update
        cart = Cart.find_by(id: params[:id])
        cart.update(user_params)
        render json: cart
    end
end
