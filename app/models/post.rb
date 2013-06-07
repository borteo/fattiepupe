class Post
  include Mongoid::Document
  include Mongoid::Paperclip

  field :author, type: String
  field :title, type: String
  field :content, type: String

  has_mongoid_attached_file :image,
    :storage        => :s3,
    :path           => ':image/:id/:style.:extension',
    :bucket         => 'borteo',
    :url            => ':s3_alias_url',
    :s3_credentials => {
      :access_key_id      => ENV['S3_ACCESS_KEY'],
      :secret_access_key  => ENV['S3_SECRET_KEY']
    },
    :styles => {
      :original => ['640x720>', :jpg],
      :small    => ['240x320#',   :jpg],
    }

end