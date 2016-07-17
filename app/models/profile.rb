class Profile < ActiveRecord::Base

  # associations
  belongs_to :user

  # adding carrierwave
  mount_uploader :profile_image, ProfileImageUploader

end
