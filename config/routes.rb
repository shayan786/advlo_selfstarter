Selfstarter::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admin_users
  root :to => 'preorder#index'
  match '/preorder'               => 'preorder#index', :via => [:get,:post]
  get 'preorder/checkout'
  match '/preorder/share/:uuid'   => 'preorder#share', :via => :get
  match '/preorder/ipn'           => 'preorder#ipn', :via => :post
  match '/preorder/prefill'       => 'preorder#prefill', :via => [:get, :post]
  match '/preorder/postfill'      => 'preorder#postfill', :via => [:get, :post]
  match '/preorder/amazon_postfill'      => 'preorder#amazon_postfill', :via => [:get, :post]
  match '/preorder/wepay_postfill'      => 'preorder#wepay_postfill', :via => [:get, :post]
  match '/preorder/contact'       => 'preorder#contact', :via => :post
end
