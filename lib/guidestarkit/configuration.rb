module GuidestarKit
  class Configuration
    attr_accessor :api_key, :api_endpoint

    def initialize
      @api_key = nil
      @api_endpoint = nil
    end
  end
end
