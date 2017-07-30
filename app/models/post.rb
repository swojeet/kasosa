class Post < ApplicationRecord
  validates :photo, :caption, presence: true

  mount_uploader :photo, PhotoUploader
end
