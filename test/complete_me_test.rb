gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/complete_me'

require "rake"
require "rake/testtask"

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
end

task default: :test # <------ important


class CompleteMe < Minitest::Test

  def setup
    @completion = CompleteMe.new
  end


  def test_can_read_dictionary_file
  end

  def test_can_populate_from_dictionary
  end

  def test_can_count_words_in_dictionary
  end

#test can store values associted with keys
suggest
#
# select

# #how to store search history?
# esp since no end node after prefix?


end
