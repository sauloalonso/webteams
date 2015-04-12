require 'rails_helper'

RSpec.describe "modelos/new", :type => :view do
  before(:each) do
    assign(:modelo, Modelo.new())
  end

  it "renders new modelo form" do
    render

    assert_select "form[action=?][method=?]", modelos_path, "post" do
    end
  end
end
