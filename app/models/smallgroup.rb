class Smallgroup < ApplicationRecord
  extend FriendlyId
  friendly_id :slug_smallgroups, use: :slugged

  def slug_smallgroups
    [
      :name
    ]
  end
end
