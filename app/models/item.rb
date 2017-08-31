class Item < ApplicationRecord
  belongs_to :category
  belongs_to :user

  after_destroy :last_item
  def last_item
  	Category.all.each do ||
  end
end
