class Treatment < ActiveRecord::Base
  belongs_to :pest
  belongs_to :user
end
