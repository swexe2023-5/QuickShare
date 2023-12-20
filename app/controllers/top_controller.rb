class TopController < ApplicationController
  def search 
    print params[:password]
    print BCrypt::Password.create(params[:password])
    if Memo.find_by(password: BCrypt::Password.create(params[:password]))
      render main_path
    else
      redirect_to top_index_path, alert: '合言葉が正しくありません'
    end
  end
end
