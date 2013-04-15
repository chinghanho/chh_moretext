module ChhMoretext
  module Request
    MORETEXT_DEFAULT_ENDPOINT = "http://more.handlino.com"

    def fetch_moretext(number, limit)
      number = {:n => "#{number}".to_i}
      limit  = parse(limit)
      condition = limit.nil? ? number : number.merge(limit)

      connection.get("sentences.json", condition).body["sentences"]
    end

    private

      def connection
        options = {
          :headers => { "Accept" => "application/json",
                        "User-Agent" => "ChhMoretext Ruby Gem #{ChhMoretext::VERSION}" },
          :url => MORETEXT_DEFAULT_ENDPOINT,
        }

        Faraday.new(options) do |conn|
          conn.request  :json
          conn.response :json
          conn.adapter Faraday.default_adapter
        end
      end
  end
end
