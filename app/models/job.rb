class Job < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :category_job, dependent: :destroy

  belongs_to :category_joblevel, dependent: :destroy
  belongs_to :category_jobtype, dependent: :destroy
end
