class Feedback < ActiveRecord::Base
  audited
  enum kind: %i(cannot_find_product notify_me_when_available)
end
