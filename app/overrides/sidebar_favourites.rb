Deface::Override.new(
  virtual_path: 'spree/shared/_taxonomies',
  name: "remove_sidebar",
  insert_bottom: '#taxonomies',
  text: "<%= tab :favourites,
                 url: products_favourites_path,
                 label: t('spree_product_like.favourites'),
                 match_path: '/favourites' %>"
)
