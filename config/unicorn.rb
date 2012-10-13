worker_processes ENV["UNICORN_COUNT"] && ENV["UNICORN_COUNT"].to_i || 3
timeout 30
preload_app true

before_fork do |server, worker|
  # Replace with Redis or whatever
  if defined?(Ohm::Model)
    Ohm::Model.conn.reset!
    Padrino.logger.info('Disconnected from Ohm')
  end

  # # If you are using Redis but not Resque, change this
  # if defined?(Ohm::Model)
  #   Resque.redis.quit
  #   Rails.logger.info('Disconnected from Redis')
  # end

  sleep 1
end

after_fork do |server, worker|
  # Replace with Redis or whatever
  if defined?(Ohm::Model)
    Ohm::Model.connect
    Padrino.logger.info('Connected to Ohm')
  end

  # # If you are using Redis but not Resque, change this
  # if defined?(Resque)
  #   Resque.redis = ENV['REDIS_URI']
  #   Rails.logger.info('Connected to Redis')
  # end
end
