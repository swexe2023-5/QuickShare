class TopController < ApplicationController
  def search
    if valid_url?(params[:password])
      # URLの場合、メモのID部分を抽出
      memo_id = params[:password].split('/').last
      redirect_to memo_path(memo_id)
    else
      hashed_password = BCrypt::Password.create(params[:password])
      @memos = Memo.where(password: hashed_password)
      if @memos.empty?
        redirect_to top_index_path, alert: '合言葉もしくはURLが正しくありません'
      else
        render :main
      end
    end
  end

  private
  def valid_url?(url)
    url.start_with?('http') && url.include?('/memos/')
  end
end
