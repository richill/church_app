class Practicalneed < ApplicationRecord
  extend FriendlyId
  friendly_id :slug_practicalneeds, use: :slugged

  belongs_to :user
  belongs_to :category_job
  belongs_to :category_jobtype

  # acts_as_commentable
  has_many :comments, as: :commentable, dependent: :destroy

  def slug_practicalneeds
    [
      :title
    ]
  end 

  def self.desc_order
    order('created_at DESC')
  end

  def self.asc_order
    order('created_at ASC')
  end
end
