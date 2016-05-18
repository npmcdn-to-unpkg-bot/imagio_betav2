class Post < ActiveRecord::Base
	has_attached_file :image, styles: { large:"800x400>", medium: "600x300>", small: "400x200>", thumb2:"200x100#", thumb: "100x200#" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
