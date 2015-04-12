require 'rails_helper'

RSpec.describe "modelos/edit", :type => :view do
  before(:each) do
    @modelo = assign(:modelo, Modelo.create!())
  end

  it "renders the edit modelo form" do
    render

    assert_select "form[action=?][method=?]", modelo_path(@modelo), "post" do
    end
  end
end
