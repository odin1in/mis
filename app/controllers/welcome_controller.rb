class WelcomeController < ApplicationController
  def index
    @q = Product.active.ransack(params[:q])
    @products = @q.result
  end
end
