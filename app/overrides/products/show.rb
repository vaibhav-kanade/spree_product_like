Deface::Override.new(virtual_path: 'spree/products/show',
                     name: 'add_like_to_product',
                     insert_before: '#product-description[data-hook]',
                     partial: 'spree/products/like')
