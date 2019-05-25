class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  process :tags => ['cocktail']
  process :folder => ['/all/cocktail']
end
