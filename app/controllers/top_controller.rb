class TopController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def destroy
  end
  
  def login
    @memo = Memo.find(params[:id])
    
  end
end