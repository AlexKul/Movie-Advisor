class Movie < ActiveRecord::Base
	has_many :users
	has_many :relations
	has_attached_file :picture, default_url: 'movie.png'
	validates_attachment_content_type :picture, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
