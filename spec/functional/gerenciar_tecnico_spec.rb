# coding: utf-8

require 'rails_helper'

feature 'gerenciar Tecnico' do

  scenario 'incluir Tecnico' do # , :js => true  do

    visit new_tecnico_path
    preencher_e_verificar_tecnico
  end

  scenario 'alterar Tecnico' do #, :js => true  do

    tecnico = FactoryGirl.create(:tecnico)
    visit edit_tecnico_path(tecnico)
    preencher_e_verificar_tecnico

  end

   scenario 'excluir tecnico' do #, :javascript => true  do

    tecnico = FactoryGirl.create(:tecnico)
    visit tecnicos_path
    click_link 'Excluir'

  end

   def preencher_e_verificar_tecnico

      fill_in 'Nome',     :with => "Luiz"
      fill_in 'Cpf',  :with => "13313223405"
      fill_in 'Rg',     :with => "1765432309"
	  fill_in 'Endereço',     :with => "Rua das couves"
	  fill_in 'DataAdm',     :with => "05/02/1999"
	  fill_in 'Salario',     :with => "1000,00"

      click_button 'Salvar'

      expect(page).to have_content 'Nome: Luiz'
	  expect(page).to have_content 'Cpf: 13313223405'
	  expect(page).to have_content 'Rg: 1765432309'
      expect(page).to have_content 'Endereço: Rua das couves'
	  expect(page).to have_content 'DataAdm: 05/02/1999'
      expect(page).to have_content 'Salario: 1000,00'

   end
end