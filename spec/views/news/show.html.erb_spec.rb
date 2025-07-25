require 'rails_helper'

RSpec.describe "news/show", type: :view do
  before(:each) do
    assign(:news, News.create!(
      title: "Title",
      content: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
