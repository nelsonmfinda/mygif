require 'rails_helper'

RSpec.describe "gifs/new", type: :view do
  before(:each) do
    assign(:gif, Gif.new(
      user: nil,
      image_data: "MyText"
    ))
  end

  it "renders new gif form" do
    render

    assert_select "form[action=?][method=?]", gifs_path, "post" do

      assert_select "input[name=?]", "gif[user_id]"

      assert_select "textarea[name=?]", "gif[image_data]"
    end
  end
end
