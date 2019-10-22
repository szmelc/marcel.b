require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  # if Rails.env.production?
  # config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    :provider => 'AWS',
    :aws_access_key_id => Rails.application.credentials.aws[:access_key_id],
    :aws_secret_access_key => Rails.application.credentials.aws[:secret_access_key],
    :region => 'eu-central-1'
  }
  config.fog_public = true
  config.fog_directory = Rails.application.credentials.aws[:s3_bucket_name]
  config.storage = :fog
  # else
  #   config.storage = :file
  #   config.enable_processing = Rails.env.development?
  # end
end
