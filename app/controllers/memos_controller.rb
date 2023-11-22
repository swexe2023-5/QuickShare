class MemosController < ApplicationController
  def new
    @memo = Memo.new
  end

  def create
    @memo = Memo.new(memo_params)
    if @memo.save
      redirect_to @memo
    else
      render 'new'
    end
  end

  def show
    @memo = Memo.find(params[:id])
  end

  private

  def memo_params
    params.require(:memo).permit(:content, :shared)
  end
end
