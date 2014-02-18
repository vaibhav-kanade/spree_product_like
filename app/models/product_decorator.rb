Spree::Product.class_eval do
  has_many :likes

  def liked_by?(user)
    likes.exists?(user: user)
  end
end
