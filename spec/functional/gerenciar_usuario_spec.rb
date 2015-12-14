require 'rails_helper'

feature 'gerencia cadastro' do 

	scenario 'incluir funcao' do # , :js => true do
		visit new_funcao_path
		preencher_e_verficar_funcao
	end

	scenario 'alterar cadastro' do # , :js => true do
		usuario = FactoryGirl.create(:funcao)
		visit edit_funcao_path(funcao)
		preencher_e_verficar_funcao
	end

	scenario 'excluir cadastro' do #, :javascript => true do
		usuario = FactoryGirl.create(:funcao)
		visit  funcaos_path
		click_link 'Excluir'
	end

	def preencher_e_verficar_funcao
		fill_in 'Tipo',     :with => "Manuntencao"
      		fill_in 'Salario',  :with => "2000.00"
      		fill_in 'Ch',     :with => "40"
	  
      		click_button 'Criar Funcao'

      		expect(page).to have_content 'Tipo: Manuntencao'
     		expect(page).to have_content 'Salario: 2000.00'
      		expect(page).to have_content 'Ch: 40'
	end
end
