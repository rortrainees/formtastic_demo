class Article < ActiveRecord::Base

	has_many :taggings
    has_many :tags, through: :taggings

	belongs_to :category

	validates_presence_of :title, :category
	validates_uniqueness_of :title

end
