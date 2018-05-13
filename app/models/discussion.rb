class Discussion < ApplicationRecord
  extend FriendlyId
  friendly_id :slug_discussions, use: :slugged

  def slug_discussions
    [
      :topic
    ]
  end
end
