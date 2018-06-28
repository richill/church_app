class Launchministry < ApplicationRecord
  extend FriendlyId
  friendly_id :slug_launchministries, use: :slugged

  validates_presence_of :firstname, presence: true, message: "can't be blank"
  validates_presence_of :lastname, presence: true, message: "can't be blank"
  validates_presence_of :email, presence: true, message: "can't be blank"
  validates_presence_of :mobile, presence: true, message: "can't be blank"
  validates_presence_of :address, presence: true, message: "can't be blank"
  validates_presence_of :city, presence: true, message: "can't be blank"
  validates_presence_of :postcode, presence: true, message: "can't be blank"
  validates_presence_of :mininstryidea, presence: true, message: "can't be blank"
  validates_presence_of :mininstrydescription, presence: true, message: "can't be blank"
  validates_presence_of :ministryneed, presence: true, message: "can't be blank"
  validates_presence_of :ministrymission, presence: true, message: "can't be blank"

  scope :approved_ministries, -> {where(['approve = ?', true])}
  scope :pending_ministries, -> {where(['approve = ? OR approve IS ?', false, nil])} 
  

  def slug_launchministries
    [
      :mininstryidea
    ]
  end

  def approved_ministry
    self.approve == true
  end

  def pending_ministry
    self.approve == false || self.approve == nil
  end


end
