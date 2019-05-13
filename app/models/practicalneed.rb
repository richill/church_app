class Practicalneed < ApplicationRecord
  extend FriendlyId
  friendly_id :slug_practicalneeds, use: :slugged

  validates_presence_of :title, presence: true, message: "can't be blank"
  validates_presence_of :description, presence: true, message: "can't be blank"
  validates_presence_of :category_job_id, presence: true, message: "can't be blank"
  validates_presence_of :location, presence: true, message: "can't be blank"

  belongs_to :user
  belongs_to :category_job
  belongs_to :category_jobtype

  scope :closed_practicalneeds, -> {where(['close = ?', true])}
  scope :open_practicalneeds, -> {where(['close = ? OR close IS ?', false, nil])}
  scope :approved_practicalneeds, -> {where(['approve = ?', true])}
  scope :unapproved_practicalneeds, -> {where(['approve = ? OR approve IS ?', false, nil])} 


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

  def closed_practicalneed
    self.close == true
  end 

  def open_practicalneed
    self.close == false || self.close == nil
  end

  def approved_practicalneed
    self.approve == true
  end 

  def unapproved_practicalneed 
    self.approve == false || self.approve == nil
  end 
end
