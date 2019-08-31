class ListsController < ApplicationController
  before_action :set_board
  before_action :set_list, only: [:show, :update, :edit, :destory]

  def index
    @lists = List.find(@board)
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to board_list_path(@board)
    else
    end
  end

  def edit
  end

  def update
    @list = List.update(list_params)

    if @list.update
      redirect_to board_list_path(@board)
    else
      render :edit
    end
  end

  def destroy
    @list.destroy
    redirect_to board_list_path(@board)
  end

  private
  def set_board
    @board = Board.find()
  end

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name, :description, :priority)
  end
end
