class Event < ApplicationRecord
  extend FriendlyId
  friendly_id :slug_events, use: :slugged

  # validates_presence_of :name, presence: true, message: "can't be blank"
  # validates_presence_of :start_time, presence: true, message: "can't be blank"
  # validates_presence_of :end_time, presence: true, message: "can't be blank"
  # validates_presence_of :category_event_id, presence: true, message: "can't be blank"
  # validates_presence_of :description, presence: true, message: "can't be blank"
  # validates_presence_of :address, presence: true, message: "can't be blank"
  # validates_presence_of :city, presence: true, message: "can't be blank"
  # validates_presence_of :postcode, presence: true, message: "can't be blank"
  # # validates_presence_of :link, presence: true, message: "can't be blank"
  # # validates_presence_of :image, presence: true, message: "can't be blank"
  # validates_presence_of :category_country_id, presence: true, message: "can't be blank"
  # validates_presence_of :linkmap, presence: true, message: "can't be blank"

  belongs_to :user
  belongs_to :category_event
  belongs_to :category_country

  scope :expired_events, -> {where(['end_time < ?', Date.current])}

  scope :youth_events, ->() { joins(:category_event).where('category_events.name' => "Youth Event") } 
  scope :church_events, ->() { joins(:category_event).where('category_events.name' => "Church Event") }  
  scope :community_events, ->() { joins(:category_event).where('category_events.name' => "Community Event") }  
  scope :national_events, ->() { joins(:category_event).where('category_events.name' => "National Event") }
  scope :leadership_events, ->() { joins(:category_event).where('category_events.name' => "Leadership Forum Event") }
  scope :baptism_events, ->() { joins(:category_event).where('category_events.name' => "Baptism Class Event") }
  scope :biblestudies_events, ->() { joins(:category_event).where('category_events.name' => "Bible Study Event") }
  scope :listed_events, -> { joins(:category_event).where("category_events.name IN (?)", ["Youth Event", "Church Event", "Community Event", "National Event", "National Event"]) }
  scope :approved_events, -> {where(['approve = ?', true])}
  scope :pending_events, -> {where(['approve = ? OR approve IS ?', false, nil])} 

  def slug_events
    [
      :name
    ]
  end

  def self.desc_order
    order('created_at DESC')
  end

  def self.asc_order
    order('created_at ASC')
  end

  def approved_event
    self.approve == true
  end

  def pending_event
    self.approve == false || self.approve == nil
  end  
end
