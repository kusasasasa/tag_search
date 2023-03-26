class ListsController < ApplicationController
  def new
    @list=List.new
  end
  
  def index
  end

  def show
    @list
  end
  def create
    list = List.new(list_params)
    list.save
    redirect_to '/top'
  end
  def edit
  end
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
