class Gallery
  include Mongoid::Document
  field :title, type: String
  field :kind, type: String
  field :image, type: String
  
  has_many :photos, :dependent => :destroy
  
end
