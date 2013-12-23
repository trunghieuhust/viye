class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	has_many :ratings
	acts_as_taggable_on :tags

	validates :title, :content, presence:true
	def self.search(search)
		if search
			find(:all, :conditions => ['content LIKE ?', "%#{search}%"])
		else
			find(:all)
		end
	end
	def average_rating
		if ratings.size == 0
			return 0
		else
			ratings.sum(:score) / ratings.size
		end	
	end
end
