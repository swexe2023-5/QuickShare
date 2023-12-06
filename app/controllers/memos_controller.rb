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

    if @memo.password.present?
      if params[:password].present? && BCrypt::Password.new(@memo.password_digest) == params[:password]
        render :show
      else
        redirect_to top_index_path, alert: '合言葉が正しくありません'
      end
    else
      render :show
    end
  end


  private

  def memo_params
    params.require(:memo).permit(:content)
  end
end
