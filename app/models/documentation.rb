class Documentation < ApplicationRecord
  extend FriendlyId
  friendly_id :slug_documentations, use: :slugged

  validates_presence_of :title, presence: true, message: "can't be blank"
  validates_presence_of :content, presence: true, message: "can't be blank"

  belongs_to :user

  def slug_documentations
    [
      :title
    ]
  end 
end
