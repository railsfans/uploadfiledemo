class Product < ActiveRecord::Base
  attr_accessible :name, :avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "images/:style/missing.png", :url  => "products/:id/:style/:basename.:extension", :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
end
