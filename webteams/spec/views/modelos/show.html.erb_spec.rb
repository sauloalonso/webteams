require 'rails_helper'

RSpec.describe "modelos/show", :type => :view do
  before(:each) do
    @modelo = assign(:modelo, Modelo.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
