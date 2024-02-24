# encoding: utf-8

module Utility
  module IOHelper
    def self.get_file_size(file_path)
      begin
        file_size = File.size(file_path)

        return file_size
      rescue => e
        puts "An error occurred: #{e.message}"
        return nil
      end
    end
  end
end