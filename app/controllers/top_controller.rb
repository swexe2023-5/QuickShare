class TopController < ApplicationController
  def search
    @memos = Memo.where('password = ?', secure_password(params[:password]))
    if @memos.empty?
      redirect_to top_index_path, alert: '合言葉が正しくありません'
    else
      render :main
    end
  end
end