class Spree::LikesController < Spree::StoreController
  def create
    product = Spree::Product.find(params[:product_id])
    current_spree_user.like(product)
    redirect_to request.referer
  end
end
