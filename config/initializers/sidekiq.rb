redis_server = ENV.fetch('REDIS_JOB_URL', nil) 
if redis_server.present?
    Sidekiq.configure_server do |config|
        config.redis = { url: redis_server , network_timeout: 5  }
    end

    Sidekiq.configure_client do |config|
        config.redis = { url: redis_server , network_timeout: 5  }
    end
end