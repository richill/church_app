class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable 

  extend FriendlyId
  friendly_id :slug_users, use: :slugged

  # acts_as_commentable
  has_many :comments, as: :commentable, dependent: :destroy

  has_many :events
  has_many :practicalneeds, dependent: :destroy
  has_many :jobs, dependent: :destroy
  #note: if you destroy the user, automatically destroy all jobs belonging to that specific user 

  has_many :attendances, dependent: :destroy
  has_many :attending_groups, through: :attendances, source: :attendable, source_type: 'Smallgroup', dependent: :destroy

  has_many :launchministries
  has_many :galleries

  belongs_to :category_gender

  scope :males, ->() { joins(:category_gender).where('category_genders.name' => "Male") } 
  scope :females, ->() { joins(:category_gender).where('category_genders.name' => "Female") }
  scope :admins, -> {where(['admin = ?', true])} 


  def slug_users
    [
      :firstname
    ]
  end

  def admin?
    self.admin.present?
  end

  protected
  # deactivates confirmable
  def confirmation_required?
    false
  end
end
