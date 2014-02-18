require 'spec_helper'

def sign_in_as!(user)
  visit 'login'
  fill_in 'Email', with: user.email
  fill_in 'Password', with: user.password
  click_button 'Login'
end

feature "likes a product" do
  given!(:shopper) { create(:user) }
  given!(:product) { create(:product) }

  context 'when a user is logged in' do
    background do
      sign_in_as! shopper
    end

    context 'visit a product page that is not liked yet' do
      background do
        visit spree.product_path(product)
      end

      scenario 'can like a a product' do
        page.should have_button 'like'
      end
    end

    context 'visit a product page that is already liked' do
      background do
        visit spree.product_path(product)
        click_on 'like'
      end

      scenario 'can unlike a a product' do
        page.should have_button 'unlike'
      end
    end
  end

  context 'when an admin is logged in' do
    given!(:admin) { create(:user) }
    before { admin.spree_roles << Spree::Role.find_or_create_by(name: :admin) }
    before { sign_in_as! admin }

    context 'visits a product' do
      background { visit spree.product_path(product) }
      scenario 'see likes count' do
        page.should have_content '0 likes'
      end
    end
  end

  context 'when a user is not logged in' do
    scenario 'cannot like a a product' do
      page.should_not have_button 'like'
    end
  end
end
