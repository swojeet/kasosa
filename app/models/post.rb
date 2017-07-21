class Post < ApplicationRecord
  validates :photo, :caption, presence: true
end
