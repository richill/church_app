class Form < ApplicationRecord
  mount_uploader :fileattachment, FileattachmentUploader
end
