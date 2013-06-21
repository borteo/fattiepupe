CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                         # required
<<<<<<< HEAD
    :aws_access_key_id      => ENV['s3_access_key_id'],       # required
    :aws_secret_access_key  => ENV['s3_secret_access_key']    # required
  }
  config.fog_directory  = ENV['s3_bucket']                    # required
end
=======
    :aws_access_key_id      => ENV['S3_ACCESS_KEY_ID'],       # required
    :aws_secret_access_key  => ENV['S3_SECRET_ACCESS_KEY']    # required
  }
  config.fog_directory  = ENV['S3_BUCKET']                    # required
end
>>>>>>> upstream/simple_upload
