class Practicalneed < ApplicationRecord
  extend FriendlyId
  friendly_id :slug_practicalneeds, use: :slugged

  belongs_to :user
  belongs_to :category_job
  belongs_to :category_jobtype

  def slug_practicalneeds
    [
      :title
    ]
  end 
end
