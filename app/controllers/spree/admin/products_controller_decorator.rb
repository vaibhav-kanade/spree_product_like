Spree::Admin::ProductsController.class_eval do
  def products_ranking
    @collection = Spree::Product.page(params[:page])
  end
end
