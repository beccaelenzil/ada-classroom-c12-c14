require 'minitest'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'pyramid'

describe "build_pyramid" do
  it "builds a expected pyramids for odd numbers" do
    pyramid = build_pyramid(7)
    expected_pyramid = "   #\n" +
                       "  ###\n" +
                       " #####\n" +
                       "#######\n"
    expect(pyramid).must_equal(expected_pyramid)


    pyramid = build_pyramid(3)
    expected_pyramid = "   #\n" +
                       "  ###\n"
    expect(pyramid).must_equal(expected_pyramid)
  end


  it "builds a 4-layer pyramid when given a height of 7" do
    pyramid = build_pyramid(7)
    expected_pyramid = "   #\n" +
                       "  ###\n" +
                       " #####\n" +
                       "#######\n"
    expect(pyramid).must_equal(expected_pyramid)
  end

  it "builds a 3-layer pyramid when given a height of 6" do
    pyramid = build_pyramid(6)
    expected_pyramid = "   ##\n" +
                       "  ####\n" +
                       " ######\n"
    expect(pyramid).must_equal(expected_pyramid)
  end
end