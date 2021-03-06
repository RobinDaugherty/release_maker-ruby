# frozen_string_literal: true

Raven.configure do |config|
  config.excluded_exceptions += %w[SignalException]

  # Send POST data
  config.processors -= [Raven::Processor::PostData]

  # Send cookies
  # config.processors -= [Raven::Processor::Cookies]

  config.release = ApplicationRelease.current
end
