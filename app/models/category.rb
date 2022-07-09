class Category < ApplicationRecord
  belongs_to :user
  has_many :activities

  validates :name, presence: { message: "Name can't be blank" }
  validates :icon, presence: true, length: { maximum: 350 }
end
