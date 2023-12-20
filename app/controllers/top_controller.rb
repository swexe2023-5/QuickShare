class TopController < ApplicationController
  def search
    memo = Memo.find_by(password: params[:password])
    if memo
      render memo_path(Memo.find(params[:memo][:password]).id)
    else
      redirect_to top_index_path, alert: '合言葉が正しくありません'
    end
  end
end
