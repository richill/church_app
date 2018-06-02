class Job < ApplicationRecord
  extend FriendlyId
  friendly_id :slug_jobs, use: :slugged


  belongs_to :user, dependent: :destroy
  belongs_to :category_job, dependent: :destroy

  belongs_to :category_joblevel, dependent: :destroy
  belongs_to :category_jobtype, dependent: :destroy

  scope :closed_jobs, -> {where(['close = ?', true])}
  scope :aprroved_jobs, -> {where(['approve = ?', true])}

  scope :church_jobs, -> {where(['churchjob = ?', true])}
  scope :non_church_jobs, -> {where(['churchjob = ?', true])}
  scope :career_jobs, -> { joins(:category_joblevel).where("Category_joblevels.name IN (?)", ["Internship", "Apprenticeship", "Entry Level", "Graduate", "Experienced (non-manager)", "Management", "Senior Executive"]) }
  scope :volunteer_jobs, ->() { joins(:category_joblevel).where('Category_joblevels.name' => "Volunteer") } 
  
  def slug_jobs
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
