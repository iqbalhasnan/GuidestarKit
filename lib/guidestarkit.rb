require "guidestarkit/version"
require "guidestarkit/configuration"

module GuidestarKit
  class << self
    attr_accessor :configuration

    def configure
      yield(configuration)
    end

    def configuration
      @configuration ||= Configuration.new
    end

    def reset
      @configuration = Configuration.new
    end
  end
end
