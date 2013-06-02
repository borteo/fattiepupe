CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                         # required
    :aws_access_key_id      => ENV['s3_access_key_id'],       # required
    :aws_secret_access_key  => ENV['s3_secret_access_key']    # required
  }
  config.fog_directory  = ENV['s3_bucket']                    # required
end