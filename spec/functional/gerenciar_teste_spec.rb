# coding: utf-8
require 'spec_helper'

feature 'gerenciar Tecnico' do

before(:each) do
	@salario = create(:salario, salario: "2000.0")
	@ch = create(:ch, ch: "40")
end
let(:dados) do {
	nome: "Luiz",
	cpf: "13313223405",
	rg: "1765432309",
	endereco: "Rua das couves",
	dataAdm: "05/02/1999",
	salario: "2000.0",
	ch: "40"
}
end

scenario 'incluir Tecnico' do #, :js => true do
	visit new_tecnico_path
	preencher(dados)
	click_button 'Salvar'
	verificar(dados)
end

scenario 'alterar tecnico' do #, :js => true do
	tecnico = FactoryGirl.create(:tecnico, salario: @salario )
	tecnico = FactoryGirl.create(:tecnico, ch: @ch )
	visit edit_tecnico_path(tecnico)
	preencher(dados)
	click_button 'Salvar'
	verificar(dados)
end
scenario 'excluir Tecnico' do #, :js => true do
	tecnico = FactoryGirl.create(:tecnico, salario: @salario)
	tecnico = FactoryGirl.create(:tecnico, ch: @ch)
	visit tecnicos_path
	#save_and_open_page
	click_link 'Excluir'
end

def preencher(dados)
	fill_in 'Nome', with: dados[:nome]
	fill_in 'Cpf', with: dados[:cpf]
	fill_in 'Rg', with: dados[:rg]
	fill_in 'Endereco', with: dados[:endereco]
	fill_in 'Data Admissao', with: dados[:dataAdm]
	fill_in 'Salario', with: dados[:salario]
	select dados[:salario], from: "Funcao"
	fill_in 'Salario', with: dados[:salario]
	select dados[:salario], from: "Funcao"
	fill_in 'ch', with: dados[:ch]
	select dados[:ch], from: "Funcao"
end

def verificar(dados)
	page.should have_content "Nome: #{dados[:nome]}"
	page.should have_content "Cpf: #{dados[:cpf]}"
	page.should have_content "Rg: #{dados[:rg]}"
	page.should have_content "Endereco: #{dados[:endereco]}"
	page.should have_content "DataAdm: #{dados[:dataAdm]}"
	page.should have_content "Salario: #{dados[:salario]}"
	page.should have_content "ch: #{dados[:ch]}"

	end
end
