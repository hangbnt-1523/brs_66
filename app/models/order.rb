class Order < ApplicationRecord
  enum status: {unchecked: 0, checked: 1, done: 2}

  belongs_to :user
  has_many :order_details
  has_many :products, through: :order_details

  validates :full_name, presence: true
  validates :phone, presence: true
  validates :address, presence: true
  
end
