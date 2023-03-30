class ListsController < ApplicationController
  def new
    @list=List.new
  end
  
  def index
  end

  def show
    @list=List.find(params[:id])
  end
  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list.id)
    else
       @lists = List.all      
       render :new
    end
  end
  def edit
  end
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
