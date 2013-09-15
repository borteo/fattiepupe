class Category
  include Mongoid::Document
  field :name, type: String
  field :position, type: Integer

  has_many :posts
  
  scope :all, order_by(:name => :asc)
  

end
