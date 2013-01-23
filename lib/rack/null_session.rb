require 'rack/null_session/version'
module Rack
  class NullSession

    class DumbHash < Hash
      def []= key,value
        super key.to_s, value
      end
      def [] key
        super key.to_s
      end
    end

    def initialize app
      @app = app
    end

    def call env
      @app.call( ({ "rack.session" => DumbHash.new }).merge(env) )
    end

  end
end
