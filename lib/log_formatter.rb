# プログラム実行に必要なライブラリの読み込み
require 'net/http'
require 'uri'
require 'json'

module LogFormatter
  def self.format_log
    uri = URI.parse('https://samples.jnito.com/access-log.json')
    json = Net::HTTP.get(uri)
    log_data = JSON.parse(json, symbolize_names: true)
    pp log_data

    log_data.map do |log|
      case log
        in{request_id:, path:, status: 404 | 500 => status, error:}#先に404を検知する必要があるので、先出し
          "[ERROR] request_id=#{request_id}, path=#{path}, status=#{status}, error=#{error}"
        in{request_id:, path:, duration: 1000.. => duration}
          "[WARN] request_id=#{request_id}, path=#{path}, duration=#{duration}"
        in{request_id:, path:}
          "[OK] request_id=#{request_id}, path=#{path}"
      end
    end.join("\n")
  end
end
