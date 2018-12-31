class Photo < ActiveRecord::Base
  has_attached_file :file, styles: { medium: "1000x1000>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :file, content_type: /\Aimage\/.*\z/
  validates :camera, length: { maximum: 200 }
  validates :film, length: { maximum: 200 }
  validates :file, presence: true
  acts_as_votable

end
