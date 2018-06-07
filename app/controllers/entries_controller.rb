class EntriesController < ApplicationController
  before_action :find_entry, only: [:show, :edit, :update, :destroy]

  def index
  	@entries = Entry.all.order("created_at DESC")
  end
  
  def show
  end

  def new
  	@entry = Entry.new
  end

  def create
  	@entry = Entry.new(entry_params)

  	if @entry.save
  	  redirect_to @entry
    else 
  	  render 'new'
  	end    
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def find_entry
      @entry = Entry.find(params[:id])	
    end

    def entry_params
      params.require(:entry).permit(:title, :content)
    end	
end
