require 'rails_helper'

RSpec.describe "modelos/index", :type => :view do
  before(:each) do
    assign(:modelos, [
      Modelo.create!(),
      Modelo.create!()
    ])
  end

  it "renders a list of modelos" do
    render
  end
end
