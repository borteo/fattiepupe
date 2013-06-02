class Photo
  include Mongoid::Document
  field :photo_file, type: String
  field :gallery_id, type: Integer
  field :position, type: Integer
  
  belongs_to :gallery
  
  mount_uploader :photo_file, PhotoFileUploader
  
  #before_save :set_position
  def set_position
    if self.gallery.photos.empty?
      p = 1
    else
      p = self.gallery.photos.last.position + 1
    end
    self.position = p
  end
  
  def next
    self.gallery.photos.where('position > ?', self.position).first
  end
  
  def prev
    self.gallery.photos.where('position < ?', self.position).last
  end
  
  
end