class TopController < ApplicationController
  def search
    @memo = Memo.find_by(password: params[:password])
    if @memo
      redirect_to memo_path(@memo)
    else
      redirect_to top_index_path, alert: '合言葉が正しくありません'
    end
  end
end
