# Resolves "connection is closed" in integration tests. See: https://github.com/ryandotsmith/queue_classic/issues/96#issuecomment-24118800
if Rails.env.development? || Rails.env.test?
  module QC
    module Conn
      def connect
        conn = ActiveRecord::Base.connection.raw_connection
        log(:level => :error, :message => conn.error) if conn.status != PGconn::CONNECTION_OK
        conn
      end
    end
  end
end
