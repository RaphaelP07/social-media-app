devise_for :admins

namespace :admin do
  get 'dashboard/index'
end