module ProductsHelper
  def form_title
    @product.new_record? ? 'New Product' : 'Update Product'
  end
end
