# coding: utf-8
require 'rails_helper'
    feature 'modelo' do
        scenario 'Incluir Modelo' do # , :js => true do
            visit new_modelo_path
            preencher_e_verificar_modelo
        end

        scenario 'Alterar Modelo' do #, :js => true do
            modelo = FactoryGirl.create(:modelo)
            visit edit_modelo_path(modelo)
            preencher_e_verificar_modelo
        end
        scenario 'Excluir Modelo' do #, :javascript => true do
            aluno = FactoryGirl.create(:modelo)
            visit modelo_path
            click_link 'apagar'
        end

        def preencher_e_verificar_modelo
            fill_in 'Nome', :with => "Luiz"
            click_button 'Create Modelo'
            expect(page).to have_content  'Nome: Luiz'
        end
end