Spree::Core::Engine.routes.draw do
  post 'like_product/:id', to: 'likes#like_product', as: 'like_product'
end
