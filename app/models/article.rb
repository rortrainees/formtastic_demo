class Article < ActiveRecord::Base
	belongs_to :category

	validates_presence_of :title, :category
	validates_uniqueness_of :title
end
