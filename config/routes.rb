Rails.application.routes.draw do
  root to: "memos#index"
  get "/new", to:"memos#new"
  post "/create", to:"memos#create"
  # patch :データの更新を行う。
  # delete:データの削除を行う
  delete "/memos/:id", to:"memos#destroy"
  get "/memos/:id/edit", to:"memos#edit"
  patch "/memos/:id", to:"memos#update"
  get "/categories/:id", to:"categories#show"
end
