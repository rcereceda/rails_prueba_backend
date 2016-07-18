class Work < ActiveRecord::Base
  belongs_to :user
  belongs_to :inventory

  scope :last_5, -> { order(id: :desc).limit(5) }
  scope :no_items, ->  { where(inventory_id: nil) }
end
