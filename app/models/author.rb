class Author < ApplicationRecord
	has_many :posts, dependent: :destroy
	validates :name, presence: true
	validates :bio, presence: true, length: { minimum: 5, maximum: 500 }
	validates :photo_url, presence: true
end
