module Docs
  class Rhel7
    class CleanHtmlFilter < Filter
      def call
        @doc = doc.at_css('#main')
        doc
      end
    end
  end
end
