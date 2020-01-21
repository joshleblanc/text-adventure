module Locations
  class Location < Noun
    class << self
      def door(str)
        destinations << str
      end

      private
      def destinations
        noun[:destinations] ||= []
      end
    end
  end
end