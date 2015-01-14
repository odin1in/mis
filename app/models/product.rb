class Product < ActiveRecord::Base
  has_many :products
  belongs_to :supplier
  enum status: %i(inactive active)

  def out_of_stock?
    qoh <= 0
  end
end
