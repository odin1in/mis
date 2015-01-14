class Product < ActiveRecord::Base
  belongs_to :supplier
  enum status: %i(inactive active)
end
