class Job < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :category_job, dependent: :destroy
end
