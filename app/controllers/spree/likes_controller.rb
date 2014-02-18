class Spree::LikesController < Spree::StoreController
  def like_product
    current_spree_user.like(product)
    redirect_to_referer
  end

  def unlike_product
    product.likes.where(user: current_spree_user).first.try(:destroy)
    redirect_to_referer
  end

  def product
    @product ||= Spree::Product.find(params[:id])
  end

  def redirect_to_referer
    redirect_to request.referer
  end
end
