class MemosController < ApplicationController
  def main
    @memo = Memo.new
  end

  def create
    @memo = Memo.new(
    content: params[:memo][:content],
    password: BCrypt::Password.create(params[:memo][:password]),
    expiration_date: params[:memo][:expiration_date])
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
    params.require(:memo).permit(:content, :password,:expiration_date)
  end
  
end
