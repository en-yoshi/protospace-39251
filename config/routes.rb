Rails.application.routes.draw do
  devise_for :users # 便利機能、usersに関するget,post,deleteなどが含む。
  root to: "prototypes#index"

  # アクションに対するルーティングを記載していく
  resources :prototypes, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: :create
  end

  resources :users, only: :show #ここが重要
end
