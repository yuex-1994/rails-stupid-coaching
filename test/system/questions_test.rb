# test/system/questions_test.rb
require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "label", text: "Ask your coach anything"
    take_screenshot
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "ask", with: "Hello"
    click_on "Ask"
    assert_text "I don't care, get dressed and go to work!"
    take_screenshot
  end

  test "saying I'm going to work will yield answer great from coach" do
    visit ask_url
    fill_in "ask", with: "I am going to work"
    click_on "Ask"
    assert_text "Great!"
    take_screenshot
  end

  test "asking a question will yield a silly answer from the coach" do
    visit ask_url
    fill_in "ask", with: "Is it going to rain today?"
    click_on "Ask"
    assert_text "Silly question, get dressed and go to work!"
    take_screenshot
  end
end
