Rails.application.routes.draw do
  get 'contacts/new'
  get 'contacts/create'
  get 'about/index'
  namespace :admin do
    get 'sessions/new'
    get 'sessions/create'
  end
  namespace :admin do
    get 'users/new'
    get 'users/create'
    get 'users/edit'
    get 'users/update'
    get 'users/destroy'
    get 'users/index'
    get 'users/show'
  end
  namespace :admin do
    get 'comments/destroy'
  end
  get 'comments/new'
  namespace :admin do
    get 'categories/new'
    get 'categories/create'
    get 'categories/edit'
    get 'categories/update'
    get 'categories/destroy'
    get 'categories/index'
    get 'categories/show'
  end
  get 'categories/show'
  namespace :admin do
    get 'posts/new'
    get 'posts/create'
    get 'posts/edit'
    get 'posts/update'
    get 'posts/destroy'
    get 'posts/index'
    get 'posts/show'
  end
  get 'posts/index'
  get 'posts/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
