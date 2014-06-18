require 'test_helper'
 
class AscaffoldsTest < ActionDispatch::IntegrationTest
  test "ascaffolds" do
    visit '/ascaffolds'
    save_screenshot 'ascaffolds.png'
  end
end
