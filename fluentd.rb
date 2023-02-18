require 'fluent-logger'

if Rails.env.production?
  fluentd_host = 'your_fluentd_host'
  fluentd_port = 24224
  fluentd_tag = 'your_fluentd_tag'
else
  fluentd_host = 'localhost'
  fluentd_port = 24224
  fluentd_tag = 'development'
end

Fluent::Logger::FluentLogger.new(fluentd_tag, :host => fluentd_host, :port => fluentd_port)
