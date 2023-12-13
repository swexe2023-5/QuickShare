class TopController < ApplicationController
  def search
    memo = Memo.find_by(some_identifier) # some_identifierはメモを一意に識別するためのパラメータです（例：id、username、emailなど）

    if memo && memo.authenticate(params[:password])
      render main_path
    else
      redirect_to top_index_path, alert: '合言葉もしくはURLが正しくありません'
    end
  end
end
