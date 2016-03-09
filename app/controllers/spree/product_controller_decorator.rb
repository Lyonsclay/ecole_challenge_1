module Spree
  ProductsController.class_eval do
    def index
      #@searcher = build_searcher(params.merge(include_images: true))
      #sorting_scope = params[:sorting].try(:to_sym) || :ascend_by_updated_at
      #@products = @searcher.retrieve_products.send(sorting_scope)
      #@taxonomies = Spree::Taxonomy.includes(root: :children)
    end
  end
end
