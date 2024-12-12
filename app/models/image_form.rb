class ImageForm < ApplicationRecord
  has_one_attached :image

  validates :name, presence: true, length: { minimum: 3, maximum: 30 }
  validates :description, presence: true, length: { minimum: 3, maximum: 50 }
  validates :image, presence: true
  validate :validate_content_type
  validate :validate_image_size
  private

  def validate_content_type
    if image.attached? && !image.content_type.in?(%w[image/png image/jpg image/jpeg])
      errors.add(:image, "must be a PNG, JPG, or JPEG")
    end
  def validate_image_size
    if image.attached? && image.byte_size > 3.megabytes
      errors.add(:image, "must be less than 3 MB")
    end
  end
  end
end
