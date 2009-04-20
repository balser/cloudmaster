$:.unshift(File.expand_path('../OriginalAWS', File.dirname(__FILE__)))
require 'OriginalAWS/SQS'

module AWS
  class SQS
    def initialize(*args)
      @sqs = ::SQS.new(*args)
    end

    def method_missing(key, *args)
      @sqs.send(key, *args)
    end
  end
end