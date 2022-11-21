class MemosController < ApplicationController
  def index
    #トップページ
    @memos=Memo.all
  end

  def new
    #新規作成ページ
  end
  
  def create
    #新しいメモがフォームからpostされた際
    Memo.create(title:params["memos"]["title"], body:params["memos"]["body"])
    redirect_to "/"
  end
end
