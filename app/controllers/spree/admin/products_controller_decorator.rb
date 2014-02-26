Spree::Admin::ProductsController.class_eval do
  def products_ranking
    @collection = Spree::Product.likes_ranking.page(params[:page])
  end
end
