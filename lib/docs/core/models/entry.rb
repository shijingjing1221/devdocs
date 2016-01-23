module Docs
  class Entry
    attr_accessor :name, :type, :path, :original_url

    def initialize(name = nil, path = nil, type = nil, original_url = nil)
      self.name = name
      self.path = path
      self.type = type
      self.original_url = original_url
    end

    def ==(other)
      other.name == name && other.path == path && other.type == type && other.original_url == original_url
    end

    def <=>(other)
      name.to_s.casecmp(other.name.to_s)
    end

    def name=(value)
      @name = value.try :strip
    end

    def type=(value)
      @type = value.try :strip
    end

    def root?
      path == 'index'
    end

    def as_json
      { name: name, path: path, type: type, original_url: original_url }
    end
  end
end
