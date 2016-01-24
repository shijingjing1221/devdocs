require 'yajl/json_gem'

module Docs
  class ElasticIndex
    attr_reader :indexes, :count

    def initialize(start_count = nil)
      @indexes = []
      if start_count == nil
        @count = 0
      else
        @count = start_count
      end
    end

    def add(command, tags, title, link)
      meta ={ 
        index: {
          _id: @count.to_s
          }
        }
      data = {
        id: @count,
        name: command,
        tags: tags,
        source: {
          title: title,
          link: link
          }
        }
      add_index(meta, data)
      @count += 1
    end

    def empty?
      @indexes.empty?
    end

    alias_method :blank?, :empty?

    def length
      @indexes.length
    end

    def to_s
      @indexes.join("\n")
    end

    private

    def add_index(meta, data)
      new_item = meta.to_json.to_s + "\n" + data.to_json.to_s
      @indexes << new_item
      # if @indexes.add?(new_item)
      #   @indexes << new_item
      # end

    end

  end
end
