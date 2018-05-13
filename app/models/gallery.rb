class Gallery < ApplicationRecord
  extend FriendlyId
  friendly_id :slug_galleries, use: :slugged


  has_many :photos

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
