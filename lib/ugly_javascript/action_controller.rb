require "pry"

module UglyJavascript
  module ActionController
    extend ActiveSupport::Concern

    module ClassMethods
      def ugly_javascript(opts = {})
        after_action opts do |controller|
          if content_type =~ /javascript/
            response.body = Uglifier.compile(response.body)
          end
        end
      end
    end
  end
end
