class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	validates :title, :content, presence:true
	def self.search(search)
		if search
			find(:all, :conditions => ['content LIKE ?', "%#{search}%"])
		else
			find(:all)
		end
	end
end
