class Recommendedreading < ApplicationRecord
  validates_presence_of :notes, presence: true, message: "can't be blank"
  validates_presence_of :filename, presence: true, message: "can't be blank"
end
