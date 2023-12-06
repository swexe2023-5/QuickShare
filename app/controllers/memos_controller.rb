class MemosController < ApplicationController
  def new
    @memo = Memo.new
  end

  def create
    @memo = Memo.new(memo_params)
    if @memo.save
      redirect_to memo_new_path, alert: 'メモを作成しました'
    else
      render :new
    end
  end

  private

  def memo_params
    params.require(:memo).permit(:content)
  end
end
