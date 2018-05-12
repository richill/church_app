class Gallery < ApplicationRecord
  has_many :photos

  def self.desc_order
    order('created_at DESC')
  end

  def self.asc_order
    order('created_at ASC')
  end
end
