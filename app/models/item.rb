class Item < ApplicationRecord
	scope :size,-> w {where(size: w) }
	scope :nouser,-> {where(user_id: nil)}
  belongs_to :category
  belongs_to :user, optional: true
end
