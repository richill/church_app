class Discussion < ApplicationRecord
  extend FriendlyId
  friendly_id :slug_discussions, use: :slugged

  # acts_as_commentable
  has_many :comments, as: :commentable, dependent: :destroy

  def slug_discussions
    [
      :topic
    ]
  end
end
