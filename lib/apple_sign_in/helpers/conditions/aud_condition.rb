# frozen_string_literal: true

module AppleSignIn
  module Conditions
    class AudCondition
      def initialize(jwt)
        @aud = jwt['aud']
      end

      def valid?
        @aud == AppleSignIn.config.apple_client_id
      end
    end
  end
end