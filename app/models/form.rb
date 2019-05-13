class Form < ApplicationRecord
  mount_uploader :fileattachment, FileattachmentUploader

  validates_presence_of :title, presence: true, message: "can't be blank"
  validates_presence_of :fileattachment, presence: true, message: "can't be blank"
end
