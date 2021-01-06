class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['ADMIN_USERNAME'], password: ENV['ADMIN_PW']

  def show
    @numOfProducts = Product.count
    @numOfCategories = Category.count
  end
end
