# frozen_string_literal: true

require "test_helper"
require "utility/io_helper"

class TestTiktok < Minitest::Test

  def test_that_reaper_hunt_for_tiktok
    video_url = "https://www.tiktok.com/@openai/video/7336014973283470638"
    output_path = "sora_kangaroo.mp4"
    ::Tiktok::Reaper.hunt(video_url, output_path)
    file_size = Utility::IOHeler.get_file_size(output_path)

    refute_equal 0, file_size, "File '#{output_path}' should not be empty."
  end
  def test_that_it_has_a_version_number
    refute_nil ::Tiktok::VERSION
  end

  def test_it_does_something_useful
    assert false
  end
end
