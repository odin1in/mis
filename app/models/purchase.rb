class Purchase < ActiveRecord::Base
  audited
  belongs_to :product
  belongs_to :supplier
  enum status: %i(pending confirm waiting inhouse)
end
