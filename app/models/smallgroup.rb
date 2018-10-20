class Smallgroup < ApplicationRecord
  extend FriendlyId
  friendly_id :slug_smallgroups, use: :slugged

  mount_uploader :image, ImageUploader

  has_many :attendances, as: :attendable, dependent: :destroy

  def slug_smallgroups
    [
      :name
    ]
  end
end
