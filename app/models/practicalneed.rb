class Practicalneed < ApplicationRecord

  belongs_to :user
  belongs_to :category_job
  belongs_to :category_jobtype
end
