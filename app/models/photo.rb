class Photo < ApplicationRecord
  extend FriendlyId
  friendly_id :slug_photos, use: :slugged

  belongs_to :gallery, dependent: :destroy

  def slug_photos
    [
      :name
    ]
  end
end
