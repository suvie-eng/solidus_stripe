# frozen_string_literal: true

module SolidusStripeArchive
  class ConfigurationArchive
    # Define here the settings for this extensions, e.g.:
    #
    # attr_accessor :my_setting
  end

  class << self
    def configuration
      @configuration ||= ConfigurationArchive.new
    end

    alias config configuration

    def configure
      yield configuration
    end
  end
end
