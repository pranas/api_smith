# Monkey patches HTTParty to accept persistent connections.
module HTTParty
  class Request

    alias _original_http http
    def http
      options[:persistent] || _original_http
    end

    def perform(&block)
      validate
      setup_raw_request
      chunked_body = nil

      self.last_response = perform_inner_request do |http_response|
        if block
          chunks = []

          http_response.read_body do |fragment|
            chunks << fragment
            block.call(fragment)
          end

          chunked_body = chunks.join
        end
      end

      handle_deflation
      handle_response(chunked_body)
    end

    def perform_inner_request
      options[:persistent] ? http.request(uri, @raw_request) : http.request(@raw_request)
    end

  end
end