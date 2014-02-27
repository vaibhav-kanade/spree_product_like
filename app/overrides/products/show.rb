Deface::Override.new(virtual_path: 'spree/products/show',
                     name: 'add_like_to_product',
                     insert_before: '[data-hook="product_properties"]',
                     partial: 'spree/products/like')
