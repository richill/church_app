class Smallgroup < ApplicationRecord
  extend FriendlyId
  friendly_id :slug_smallgroups, use: :slugged

  mount_uploader :image, ImageUploader

  validates_presence_of :name, presence: true, message: "can't be blank"
  validates_presence_of :descriptin, presence: true, message: "can't be blank"
  validates_presence_of :address, presence: true, message: "can't be blank"

  has_many :attendances, as: :attendable, dependent: :destroy

  def slug_smallgroups
    [
      :name
    ]
  end
end
