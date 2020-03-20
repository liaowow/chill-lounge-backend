class BoardsController < ApplicationController
    def index
        boards = Board.all
        render json: boards
    end

    def create
        board = Board.create(board_params)
        boards = Board.all
        # user = User.find_by(id: board_params[:user_id])
        render json: boards
    end

    private
    def board_params
        params.require(:board).permit(:user_id, :cocktail, :message)
    end
end
