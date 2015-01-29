class Listing < ActiveRecord::Base
has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, 
					:default_url => "default.jpg"
# Validate content type
validates_attachment :image, :content_type => { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] }
attr_accessible :name, :description, :price, :image
end