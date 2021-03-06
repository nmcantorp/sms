module Compass
  module Commands
    class Base

      include Actions

      attr_accessor :working_path, :options

      def initialize(working_path, options)
        self.working_path = working_path
        self.options = options
      end
      
      def perform
        raise StandardError.new("Not Implemented")
      end

      protected

      def framework
        Compass::Frameworks[options[:framework]]
      end

    end
  end
end