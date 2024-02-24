# frozen_string_literal: true

require "bundler/gem_tasks"
require "minitest/test_task"

Minitest::TestTask.create

require "rake/extensiontask"

task build: :compile

GEMSPEC = Gem::Specification.load("tiktok.gemspec")

Rake::ExtensionTask.new("tiktok", GEMSPEC) do |ext|
  ext.lib_dir = "lib/tiktok"
end

task default: %i[clobber compile test]
