class Info < ActiveRecord::Base
  belongs_to :trip, dependent: :destroy
  has_one :description
end
