class CreateEmpregados < ActiveRecord::Migration
  def change
    create_table :empregados do |t|
      t.string :nome
      t.string :telefone
      t.string :endereco
      t.string :rg
      t.string :cpf
      t.date :dataadm
      t.references :funcao, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
