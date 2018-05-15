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

  belongs_to :category_event, dependent: :destroy
  belongs_to :category_country, dependent: :destroy

  scope :expired_events, -> {where(['end_time < ?', Date.current])}

  scope :youth_events, ->() { joins(:category_event).where('category_events.name' => "Youth Event") } 
  scope :church_events, ->() { joins(:category_event).where('category_events.name' => "Church Event") }  
  scope :community_events, ->() { joins(:category_event).where('category_events.name' => "Community Event") }  
  scope :national_events, ->() { joins(:category_event).where('category_events.name' => "National Event") }
  scope :leadership_events, ->() { joins(:category_event).where('category_events.name' => "Leadership Forum Event") }

  def slug_events
    [
      :name
    ]
  end  
end
