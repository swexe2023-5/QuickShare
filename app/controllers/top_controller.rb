class TopController < ApplicationController
  def search
    @memos = Memo.where('content LIKE ?', "%#{params[:keyword]}%")
    if @memos.empty?
      redirect_to top_index_path, alert: '合言葉もしくはURLが正しくありません'
    else
      render :main
    end
  end
end