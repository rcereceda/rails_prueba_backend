class Inventory < ActiveRecord::Base
  belongs_to :category
  has_one :work
  validates :serial, presence: true, uniqueness: true
  validates :wheelsize, numericality: { greater_than: 0 }

  scope :with_size, ->(s) { where(wheelsize: s) }
end
