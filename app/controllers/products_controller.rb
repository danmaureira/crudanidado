class ProductsController < ApplicationController
  def create
  @product = Product.new(product_params)
  @product.category = Category.find(params[:category_id])
  @product.save
  redirect_to @product.category
  end

  def product_params
    params.require(:product).permit(:name, :price, :category_id)
  end
end
