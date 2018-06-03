class Job < ApplicationRecord
  extend FriendlyId
  friendly_id :slug_jobs, use: :slugged


  belongs_to :user
  belongs_to :category_job
  belongs_to :category_joblevel
  belongs_to :category_jobtype

  scope :closed_jobs, -> {where(['close = ?', true])}
  scope :aprroved_jobs, -> {where(['approve = ?', true])}

  scope :church_jobs, -> {where(['churchjob = ?', true])}
  scope :non_church_jobs, -> {where(['churchjob = ?', true])}
  scope :career_jobs, -> { joins(:category_joblevel).where("Category_joblevels.name IN (?)", ["Internship", "Apprenticeship", "Entry Level", "Graduate", "Experienced (non-manager)", "Management", "Senior Executive"]) }
  scope :volunteer_jobs, -> { joins(:category_joblevel).where("Category_joblevels.name IN (?)", ["Volunteer"]) }


  
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

  def original_url
    base_url + original_fullpath
  end
end
