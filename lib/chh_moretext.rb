require "chh_moretext/request"
require "chh_moretext/configuration"
require "faraday_middleware"

module ChhMoretext
  class Base
    extend Request

    private
      def self.parse(type)
        case type
        when Range   then {:limit => "#{type.min},#{type.max}"}
        when Integer then {:limit => "#{type}"}
        else nil
        end
      end
  end
end

require "chh_moretext/moretext"
