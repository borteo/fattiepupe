class Category
  include Mongoid::Document
  field :name, type: String
  field :position, type: Integer
end
