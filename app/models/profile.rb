class Profile < ActiveRecord::Base

  # associations
  belongs_to :user

  # adding carrierwave
  mount_uploader :profile_image, ProfileImageUploader

  # making sure ppl don't upload huge images
  validate  :profile_image_size

  private

  # custom validation for profile_image (cheching that file isnt too big.)
  def profile_image_size
    if profile_image.size > 4.megabytes
      errors.add(:profile_image, "Image too big. Please upload a smaller one.")
    end
  end

end
