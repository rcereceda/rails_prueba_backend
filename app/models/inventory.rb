class Inventory < ActiveRecord::Base
  belongs_to :category
  has_one :work, dependent: :destroy
  validates :serial, presence: true, uniqueness: true
  validates :wheelsize, numericality: { greater_than: 0 }
  after_destroy :register_item_deleted

  scope :with_size, ->(s) { where(wheelsize: s) }

  def register_item_deleted
  	r = Register.new(description: "La pieza con serial #{serial} ha sido borrada")
  	r.save
  end
end
