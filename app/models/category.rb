class Category < ApplicationRecord
  belongs_to :user
  has_many :entities

  validates :name, presence: { message: "Name can't be blank" }
  validates :icon, presence: true, length: { maximum: 350 }
end
