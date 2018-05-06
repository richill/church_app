class Launchministry < ApplicationRecord
  validates_presence_of :firstname, presence: true, message: "can't be blank"
  validates_presence_of :lastname, presence: true, message: "can't be blank"
  validates_presence_of :email, presence: true, message: "can't be blank"
  validates_presence_of :mobile, presence: true, message: "can't be blank"
  validates_presence_of :address, presence: true, message: "can't be blank"
  validates_presence_of :city, presence: true, message: "can't be blank"
  validates_presence_of :postcode, presence: true, message: "can't be blank"
  validates_presence_of :mininstryidea, presence: true, message: "can't be blank"
  validates_presence_of :mininstrydescription, presence: true, message: "can't be blank"
  validates_presence_of :ministryneed, presence: true, message: "can't be blank"
  validates_presence_of :ministrymission, presence: true, message: "can't be blank"
end
