class Product < ActiveRecord::Base
  audited
  has_many :products
  has_many :users, through: :orders
  has_many :orders
  has_many :purchases
  belongs_to :supplier
  enum status: %i(inactive active)

  def out_of_stock?
    qoh <= 0
  end

  def create_purchase
    purchases.where("status < 3").find_or_create_by(supplier: supplier, product: self, status: :pending)
  end
end
