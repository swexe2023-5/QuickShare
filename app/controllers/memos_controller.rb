class MemosController < ApplicationController
  def main
    @memo = Memo.new
  end

  def create
    @memo = Memo.new(memo_params)
    if @memo.save
      redirect_to memo_path(@memo), alert: 'メモを作成しました'
    else
      render :new
    end
  end
  

  def show
    @memo = Memo.find(params[:id])
  end



  private

  def memo_params
    params.require(:memo).permit(:content, :password, :password_confirmation,:expiration_date)
  end
end
