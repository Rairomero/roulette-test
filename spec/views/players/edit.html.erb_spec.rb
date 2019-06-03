require 'rails_helper'

RSpec.describe "players/edit", type: :view do
  before(:each) do
    @player = assign(:player, Player.create!(
      :name => "MyString",
      :lastname => "MyString",
      :balance => 1
    ))
  end

  it "renders the edit player form" do
    render

    assert_select "form[action=?][method=?]", player_path(@player), "post" do

      assert_select "input[name=?]", "player[name]"

      assert_select "input[name=?]", "player[lastname]"

      assert_select "input[name=?]", "player[balance]"
    end
  end
end
