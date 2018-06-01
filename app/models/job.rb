class Job < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :category_job, dependent: :destroy

  belongs_to :category_joblevel, dependent: :destroy
  belongs_to :category_jobtype, dependent: :destroy


  def self.desc_order
    order('created_at DESC')
  end

  def self.asc_order
    order('created_at ASC')
  end
end
