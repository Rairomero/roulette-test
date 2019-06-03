# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'players/show', type: :view do
  before(:each) do
    @player = assign(:player, Player.create!(
                                name: 'Name',
                                lastname: 'Lastname',
                                balance: 2
                              ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Lastname/)
    expect(rendered).to match(/2/)
  end
end
