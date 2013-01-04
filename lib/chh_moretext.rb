require "chh_moretext/version"
require "json"
require "open-uri"

module ChhMoretext
  class Base
    class << self
      def fetch_moretext(number, limit)
        number = "n=#{number}"

        if limit.is_a?(Range)
          limit = "limit=#{limit.min},#{limit.max}"
        elsif limit.is_a?(Integer)
          limit = "limit=#{limit}"
        else
          limit = nil
        end

        if limit.nil?
          condition = "?#{number}"
        else
          condition = "?#{number}&#{limit}"
        end
        return JSON(open("http://more.handlino.com/sentences.json#{condition}").read)["sentences"]
      end
    end
  end
end

require "chh_moretext/moretext"
