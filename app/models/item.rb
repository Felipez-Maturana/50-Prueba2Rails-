class Item < ApplicationRecord
	scope :size,-> w {where(size: w) }
	scope :nouser,-> {where(user_id: nil)}
	after_destroy :lastitem
	belongs_to :category
	belongs_to :user, optional: true


  def lastitem
  	if(Item.where(category_id: self.category_id).length == 0  )
  		Category.where(id: self.category_id)[0].destroy
  	end
  end

end
