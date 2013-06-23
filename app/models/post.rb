class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :author, type: String
  field :title, type: String
  field :content, type: String
  field :photo, type: String
  
  mount_uploader :photo, PhotoUploader
  
  scope :recent, order_by(:created_at => :desc)
  scope :category, ->(cat) { where(:category => cat.id) }

  has_and_belongs_to_many :tags
  belongs_to :category
end