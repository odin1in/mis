class Feedback < ActiveRecord::Base
  enum kind: %i(cannot_find_product notify_me_when_available)
end
