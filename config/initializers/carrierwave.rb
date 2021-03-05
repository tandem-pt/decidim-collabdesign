# frozen_string_literal: true

CarrierWave.configure do |config|
  aws_access_key=ENV.fetch('AWS_ACCESS_KEY_ID', nil)
  enabled_aws = !aws_access_key.nil? && !aws_access_key.empty?;

  if enabled_aws
    puts "AWS ENABLED"
    config.storage    = :aws
    config.aws_bucket = ENV.fetch('AWS_BUCKET', '') # for AWS-side bucket access permissions config, see section below
  
    # The maximum period for authenticated_urls is only 7 days.
    config.aws_authenticated_url_expiration = 60 * 60 * 24 * 7
  
    # Set custom options such as cache control to leverage browser caching.
    # You can use either a static Hash or a Proc.
    config.aws_attributes = -> { {
      expires: 1.week.from_now.httpdate,
      cache_control: "max-age=#{365.day.to_i}"
    } }
  
    config.aws_credentials = {
      access_key_id:     ENV.fetch('AWS_ACCESS_KEY_ID', ''),
      secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY', ''),
      region:            ENV.fetch('AWS_REGION', 'eu-west-2'), # Required
      stub_responses:    Rails.env.test? 
    }
  else
    config.storage = :file
  end

  config.cache_dir = "#{Rails.root}/tmp/uploads"
end
