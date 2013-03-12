class ClientsController < ApplicationController

  def index
    @client = Client.search(params[:search])
  end
  
  def new
    @client = Client.new
  end
  
  def create
    @client = Client.new(params[:client])
    if @client.save 
      redirect_to "/"
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render :action => "new"
    end
  end

  def edit
    @client = Client.find(params[:id])
  end
  
  def update
    @client = Client.find(params[:id])
    @client.update_attributes(params[:client])
    redirect_to "/"
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy
    redirect_to "/"
  end
  
end
