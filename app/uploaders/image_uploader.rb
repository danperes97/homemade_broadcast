class ImageUploader < CarrierWave::Uploader::Base
  if Rails.env.development? || Rails.env.test?
    storage :file
  else
    storage :aws
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end
