class MemosController < ApplicationController
  def main
    @memo = Memo.new
  end

  def create
    @memo = Memo.new(
    content: params[:memo][:content],
    password: params[:memo][:password],
    expiration_date: params[:memo][:expiration_date])
    if @memo.save
      redirect_to memo_path(Memo.find(params[:memo][:password]).id), alert: 'メモを作成しました'
    else
      render :new
    end
  end
  
  def show
    @memo = Memo.find_by(id: params[:id])
    if @memo.nil?
      redirect_to root_path, alert: 'メモが見つかりませんでした。'
    end
  end

  def destroy
    @Memo = Memo.find(params[:id])
    @Memo.destroy
    redirect_to top_index_path
  end
end
