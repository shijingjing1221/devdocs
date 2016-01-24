module Docs
  class Openshift
    class CleanHtmlFilter < Filter
      def call
        @doc = doc.at_css('.main')
        doc
      end
    end
  end
end
