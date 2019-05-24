class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  process :tags => ['cocktail']
end
