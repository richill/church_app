class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable 

  extend FriendlyId
  friendly_id :slug_users, use: :slugged

  def slug_users
    [
      :firstname
    ]
  end

  protected
  # deactivates confirmable
  def confirmation_required?
    false
  end
end
