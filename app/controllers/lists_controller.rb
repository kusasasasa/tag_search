class ListsController < ApplicationController
  def new
    @list=List.new
  end
  
  def index
    @list=List.all
  end

  def show
    @list=List.find(params[:id])
  end
  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path
    else
       @lists = List.all      
       render :new
    end
  end
  def update
    
  end
  def edit
  end
  
  private
  def list_params
    params.require(:list).permit(:title, :body, :address, :latitude, :longitude)
  end
end
