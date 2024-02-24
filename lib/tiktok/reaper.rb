# coding: utf-8

require "nokogiri"
require "open-uri"
require "http"

module Tiktok
  module Reaper
    def self.hunt(url, output_path)
      # Fetch the TikTok webpage
      html = URI.open(url).read

      # Parse the HTML content using Nokogiri
      doc = Nokogiri::HTML(html)

      # Find the video element and extract the video URL
      video_url = doc.css('video').first('src')

      # Download the video using HTTP gem
      response = HTTP.get(video_url)

      # Save the video to the specified output path
      File.open(output_path, 'wb') do |file|
        file.write(response.body)
      end
    end
  end
end