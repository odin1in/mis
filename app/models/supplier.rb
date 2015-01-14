class Supplier < ActiveRecord::Base
  audited
  has_many :products
end
