# Load the rails application
require File.expand_path('../application', __FILE__)


ENV['s3_bucket_name']='fattiepupe'
ENV['aws_access_key_id']='AKIAIVNTMESXKCILN4OQ'
ENV['aws_secret_access_key']='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'

ENV['s3_bucket']='fattiepupe'
ENV['s3_access_key_id']='AKIAIVNTMESXKCILN4OQ'
ENV['s3_secret_access_key']='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'

# Initialize the rails application
FattiEPupe::Application.initialize!
