class CategoryJob < ApplicationRecord
  has_many :jobs
  has_many :practicalneeds
end
