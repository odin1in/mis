class Order < ActiveRecord::Base
  enum status: %i(pending delivered done returned)
  belongs_to :product
  belongs_to :user

  validates :qty, numericality: { greater_than: 0}
  validates :delivery_name, presence: true
  validates :delivery_address, presence: true
  validates :delivery_phone, presence: true
  validates :credit_card_number, presence: true
  validates :cvv, presence: true

  before_validation :set_qty
  before_validation :set_product_detail
  after_validation :set_total
  before_create :minu_qoh


  private
    def minu_qoh
      product.qoh -= self.qty
      product.save!
    end

    def set_qty
      self.qty ||= 1
    end

    def set_product_detail
      self.unit_price = product.price
    end

    def set_total
      self.total = unit_price * qty
    end
end
