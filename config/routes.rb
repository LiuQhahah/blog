Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #方法resources:用来声明一个标准的REST资源
  resources :articles
  
  #设置默认打开127.0.0.1:3000的默认路径
  root 'welcome#index'
end
