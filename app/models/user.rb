class User < ApplicationRecord
	has_many :items
	validates :name :email, presence: true
	validates :email, uniqueness: true

	before_save :capitalizeName

	def capitalizeName
		self.name = self.name.split.map(&:capitalize).join(' ')
	end
end
