class Product < ActiveRecord::Base
  audited
  has_many :products
  has_many :users, through: :orders
  has_many :orders
  belongs_to :supplier
  enum status: %i(inactive active)

  def out_of_stock?
    qoh <= 0
  end
end
