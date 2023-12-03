class MemosController < ApplicationController
  def main
    @memo = Memo.new(memo_params)
    if @memo.save
      redirect_to top_index_path, notice: 'メモを作成しました'
    else
      render :main
    end
  end

  def search
    @memos = Memo.where('content LIKE ?', "%#{params[:password]}%")
    if @memos.empty?
      redirect_to top_index_path, alert: '合言葉もしくはURLが正しくありません'
    else
      render :main
    end
  end

  private

  def memo_params
    params.require(:memo).permit(:content)
  end
end
