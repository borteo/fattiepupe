class Post
  include Mongoid::Document

  field :author, type: String
  field :title, type: String
  field :content, type: String
  field :photo, type: String
  
  mount_uploader :photo, PhotoUploader

  has_and_belongs_to_many :tags
end