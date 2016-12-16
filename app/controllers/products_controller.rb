class ProductsController < ApplicationController

  PRODUCTS = [
      { name: "Mont Blanc", description: "Slick colour", category: "Ornament"},
      { name: "Saint Blanc", description: "Slick red suitbag", category: "Bag"}
  ]


  def index
    @category = params[:item_type]

    if @category
      @products = PRODUCTS.select {|r| r[:category] == @category}
    else
      @products = PRODUCTS
    end
  end
end
