class PagesController < ApplicationController
  def about
  end

  def contact
  end

  def home
    @categories = %w(Book Ornament Bag)
  end
end
