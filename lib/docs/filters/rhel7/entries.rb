module Docs
  class Rhel7
    class EntriesFilter < Docs::EntriesFilter
      ENTRIES_TYPE_BY_SLUG = {
        'api' => 'Commands'
      }

      def get_name
        at_css('.title').content
      end

      def get_type
        'Guides'
      end

      def additional_entries
        return []
        # # return [] unless type = ENTRIES_TYPE_BY_SLUG[slug]

        # css('option').map do |node|
        #   [node.content, base_url + node['value'], type]
        # end
        # # puts "--------------"
        # # puts result
      end
    end
  end
end
