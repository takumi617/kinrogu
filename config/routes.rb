Rails.application.routes.draw do
  # マップ
  get 'maps/index'
  resources :maps, only: [:index]

  # ユーザー関連
  resources :users, only: [:index, :new, :create, :destroy]

  # ログイン・ログアウト
  get 'top/main', to: 'top#main'
  post 'top/login', to: 'top#login'
  get 'top/logout', to: 'top#logout'

  # レビュー関連
  resources :reviews, only: [:index, :new, :create]

  # トップページ
  root "reviews#index"

  # ヘルスチェック
  get "up" => "rails/health#show", as: :rails_health_check
end
