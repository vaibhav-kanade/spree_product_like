class Spree::LikesController < Spree::StoreController
  rescue_from ActiveRecord::RecordNotFound, :with => :render_404
  helper 'spree/products'
  def like_product
    current_spree_user.like(product)
    redirect_to_referer
  end

  def unlike_product
    product.likes.where(user: current_spree_user).first.try(:destroy)
    redirect_to_referer
  end

  def index
    @searcher = build_searcher(params)
    @products = @searcher.retrieve_products
    @products = @products.where(id: current_spree_user.likes.pluck(:product_id))
  end

  private

  def product
    @product ||= Spree::Product.find(params[:id])
  end

  def redirect_to_referer
    redirect_to request.referer || root_url
  end
end
