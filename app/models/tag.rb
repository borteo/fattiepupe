class Tag
  include Mongoid::Document

  field :name, type: String

  # embedded_in :post, :inverse_of => :tags
  has_and_belongs_to_many :posts
end