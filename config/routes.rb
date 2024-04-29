Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'face_parts#index' # 初期画面表示用のルート
  get '/names', to: 'people#index' # 名前一覧取得用のルート
  resources :people, only: [:index, :new, :create]
end
