class Post
  include Mongoid::Document
  include Mongoid::Paperclip

  field :author, type: String
  field :title, type: String
  field :content, type: String

  has_mongoid_attached_file :image,
    :storage        => :s3,
    :path           => 'images/:id/:style.:extension',
    :url            => ':s3_alias_url',
    :bucket         => ENV['S3_BUCKET'],
    :s3_credentials => {
      :access_key_id      => ENV['S3_ACCESS_KEY'],
      :secret_access_key  => ENV['S3_SECRET_KEY']
    },
    :styles         => {
      :original           => ['640x720>', :png],
      :small              => ['240x320#', :png],
    }

end