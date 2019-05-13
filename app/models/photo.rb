class Photo < ApplicationRecord
  extend FriendlyId
  friendly_id :slug_photos, use: :slugged

  mount_uploader :image, ImageUploader

  validates_presence_of :image, presence: true, message: "can't be blank"
  validates_presence_of :description, presence: true, message: "can't be blank"

  belongs_to :gallery

  def slug_photos
    [
      :name
    ]
  end
end
