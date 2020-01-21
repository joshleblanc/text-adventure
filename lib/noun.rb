class Noun
  @@nouns = {}
  class << self

    def description(str)
      noun[:description] = str
    end

    def location(name)
      locations.find { |_, v| v[:name] == name }.first
    end

    def name(str)
      noun[:name] = str
    end

    def all
      nouns
    end

    def describe
      p noun[:description]
    end

    protected

    def locations
      nouns.select { |k, _| k.to_s.start_with? "Locations" }
    end

    def nouns
      @@nouns
    end

    def noun
      nouns[self] ||= {}
    end
  end
end