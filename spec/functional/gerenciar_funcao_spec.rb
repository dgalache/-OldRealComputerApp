# coding: utf-8

require 'rails_helper'

feature 'gerenciar Funcao' do

  scenario 'incluir Funcao' do # , :js => true  do

    visit new_funcao_path
    preencher_e_verificar_funcao
  end

  scenario 'alterar Funcao' do #, :js => true  do

    funcao = FactoryGirl.create(:funcao)
    visit edit_tecnico_path(funcao)
    preencher_e_verificar_funcao

  end

   scenario 'excluir Funcao' do #, :javascript => true  do

    funcao = FactoryGirl.create(:funcao)
    visit funcaos_path
    click_link 'Excluir'

  end

   def preencher_e_verificar_funcao

      fill_in 'Tipo',     :with => "Manuntencao"
      fill_in 'Salario',  :with => "2000.00"
      fill_in 'Ch',     :with => "40"
	  
      click_button 'Criar Funcao'

      expect(page).to have_content 'Tipo: Manuntencao'
      expect(page).to have_content 'Salario: 2000.00'
      expect(page).to have_content 'Ch: 40'
      
   end
end
