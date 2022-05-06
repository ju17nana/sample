class BoardsController < ApplicationController
  before_action :set_board, only: [:show, :edit, :update, :destroy]

  def index
    @boards = Board.all
  end

  def show
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)

    if @board.save
      redirect_to @board, notice: "「#{@board.title}」を作成しました"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @board.update(board_params)
      redirect_to board_path(@board), notice: "「#{@board.title}」を更新しました"
    else
      render :edit
    end
  end

  def destroy
    @board.destroy
    redirect_to boards_path, notice: "「#{@board.title}」を削除しました"
  end

  private

  def board_params
    params.require(:board).permit(:title, :body)
  end

  def set_board
    @board = Board.find_by(id: params[:id])
  end

end
