class Product < ActiveRecord::Base
  belongs_to :supplier
  enum status: %i(inactive active)

  def out_of_stock?
    qoh <= 0
  end
end
