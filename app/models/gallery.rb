class Gallery < ApplicationRecord
  extend FriendlyId
  friendly_id :slug_galleries, use: :slugged

  mount_uploader :image, ImageUploader

  validates_presence_of :name, presence: true, message: "can't be blank"
  validates_presence_of :description, presence: true, message: "can't be blank"
  validates_presence_of :date, presence: true, message: "can't be blank"

  has_many :photos, dependent: :destroy
  belongs_to :user

  def slug_galleries
    [
      :name
    ]
  end

  def self.desc_order
    order('created_at DESC')
  end

  def self.asc_order
    order('created_at ASC')
  end
end
