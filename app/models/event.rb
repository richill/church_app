class Event < ApplicationRecord
  belongs_to :category_event, dependent: :destroy
  belongs_to :category_country, dependent: :destroy
end
