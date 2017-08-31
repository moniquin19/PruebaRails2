class User < ApplicationRecord
  has_many :items, dependent: :destroy

  validates :name, presence: true

  validates :email, uniqueness: true

  before_save	:save_name

  def save_name
    self.name = name.capitalize
  	end
end
