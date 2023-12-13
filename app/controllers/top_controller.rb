class TopController < ApplicationController
  def search
    hashed_password = BCrypt::Password.create(params[:password])
    @memos = Memo.where(password: hashed_password)
    if @memos.empty?
      redirect_to top_index_path, alert: '合言葉もしくはURLが正しくありません'
    else
      render :main
    end
  end

  private
  def valid_url?(url)
    url.start_with?('http') && url.include?('/memos/')
  end
end
