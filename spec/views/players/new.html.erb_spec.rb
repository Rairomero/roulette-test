# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'players/new', type: :view do
  before(:each) do
    assign(:player, Player.new(
                      name: 'MyString',
                      lastname: 'MyString',
                      balance: 1
                    ))
  end

  it 'renders new player form' do
    render

    assert_select 'form[action=?][method=?]', players_path, 'post' do
      assert_select 'input[name=?]', 'player[name]'

      assert_select 'input[name=?]', 'player[lastname]'

      assert_select 'input[name=?]', 'player[balance]'
    end
  end
end
