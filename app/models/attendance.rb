class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :attendable, polymorphic: true
end
