class MemosController < ApplicationController
  def new
    @memo = Memo.new
  end

  def create
    @memo = Memo.new(memo_params)
    @memo.password = secure_password(params[:password]) # ここでパスワードを保存

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
    params.require(:memo).permit(:content)
  end
end
