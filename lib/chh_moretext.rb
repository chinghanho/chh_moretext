require "chh_moretext/version"
require "json"
require "open-uri"

module ChhMoretext
  class Base
    class << self
      def fetch_moretext(number, limit)
        number = "n=#{number}"
        limit  = parse(limit)
        condition = limit.nil? ? "?#{number}" : "?#{number}&#{limit}"
        return JSON(open("http://more.handlino.com/sentences.json#{condition}").read)["sentences"]
      end
    end

    private
      def self.parse(type)
        case type
        when Range   then "limit=#{type.min},#{type.max}"
        when Integer then "limit=#{type}"
        else nil
        end
      end
  end
end

require "chh_moretext/moretext"
