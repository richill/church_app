class Job < ApplicationRecord
  extend FriendlyId
  friendly_id :slug_jobs, use: :slugged

  belongs_to :user
  belongs_to :category_job
  belongs_to :category_joblevel
  belongs_to :category_jobtype

  scope :closed_jobs, -> {where(['close = ?', true])}
  scope :opened_jobs, -> {where(['close = ? OR close IS ?', false, nil])}
  scope :aprroved_jobs, -> {where(['approve = ?', true])}
  scope :unapproved_jobs, -> {where(['approve = ? OR approve IS ?', false, nil])} 

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

  def approved_job
    self.approve == true
  end

  def unapproved_job
    self.approve == false || self.approve == nil
  end 

  def closed_job
    self.close == true
  end 

  def open_job
    self.close == false || self.close == nil
  end
end
