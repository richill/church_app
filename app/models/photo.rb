class Photo < ApplicationRecord
  belongs_to :gallery, dependent: :destroy
end
