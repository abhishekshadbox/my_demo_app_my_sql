require 'rails_helper'

RSpec.describe "news/index", type: :view do
  before(:each) do
    assign(:news, [
      News.create!(
        title: "Title",
        content: "MyText"
      ),
      News.create!(
        title: "Title",
        content: "MyText"
      )
    ])
  end

  it "renders a list of news" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
