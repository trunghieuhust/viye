class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	has_many :ratings
	acts_as_taggable_on :tags

	require 'nokogiri'

	validates :title, :content, presence:true
	def self.search(search)
		if search
			find(:all, :conditions => ['content LIKE ? AND title LIKE ?', "%#{search}%","%#{search}%"])

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
	def get_image
		doc = Nokogiri::HTML(self.content)
		if img = doc.xpath('//img').first
			p img.attr('src')
		end
	end
end
