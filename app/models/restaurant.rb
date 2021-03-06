class Restaurant < ApplicationRecord
  has_one :menu
  has_many :tables
  has_many :employees
  has_many :menu_items, through: :menu
  has_many :line_items, through: :menu_items
  has_many :categories, through: :menu_items
  has_many :orders, through: :tables
  belongs_to :cusine

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true
end
