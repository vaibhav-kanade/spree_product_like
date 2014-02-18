Spree::User.class_eval do
  has_many :likes

  def like(product)
    self.likes.new(product: product) unless likes.exists?(product: product)
    save
  end
end
