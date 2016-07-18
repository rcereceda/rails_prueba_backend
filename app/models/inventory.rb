class Inventory < ActiveRecord::Base
  belongs_to :category
  validates :serial, presence: true, uniqueness: true
end
