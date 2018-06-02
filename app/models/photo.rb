class Photo < ApplicationRecord
  extend FriendlyId
  friendly_id :slug_photos, use: :slugged

  belongs_to :gallery

  def slug_photos
    [
      :name
    ]
  end
end
