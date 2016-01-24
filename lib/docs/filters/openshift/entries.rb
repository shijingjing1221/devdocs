module Docs
  class Openshift
    class EntriesFilter < Docs::EntriesFilter

      def get_name
        at_css('.title, h1').content
      end

      def get_type
        'Guides'
      end

      def additional_entries
        return []
      end
    end
  end
end
