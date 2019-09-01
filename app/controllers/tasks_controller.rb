class TasksController < ApplicationController
  before_action :set_list
  before_action :set_task, only: [:show, :update, :edit, :destroy]

  def index
    @tasks = 
  end

  def show
  end

  def new
  end

  def create
    
  end

  def edit
  end

  def update
    
  end
end
