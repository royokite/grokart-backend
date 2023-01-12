class TransactionsController < ApplicationController
    def index
        render json: Transaction.all
    end

    def show
        transaction = Transaction.find_by(id: params[:id])
        if transaction
            render json: transaction
        else 
            render json: {error: "Transaction not found"}, status: :not_found
        end
    end    
end
