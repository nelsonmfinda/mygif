require 'rails_helper'

RSpec.describe "gifs/index", type: :view do
  before(:each) do
    assign(:gifs, [
      Gif.create!(
        user: nil,
        image_data: "MyText"
      ),
      Gif.create!(
        user: nil,
        image_data: "MyText"
      )
    ])
  end

  it "renders a list of gifs" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
