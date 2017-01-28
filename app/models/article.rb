class Article < ApplicationRecord
	has_many :posts, :class_name => 'Article', :foreign_key => 'author_id'
	belongs_to :author, :class_name => 'Article', :foreign_key => 'author_id'
end
