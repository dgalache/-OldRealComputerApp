class CreateTecnicos < ActiveRecord::Migration
  def change
    create_table :tecnicos do |t|
      t.string :nome
      t.string :cpf
      t.string :rg
      t.string :endereco
      t.date :dataadm
      t.float :salario

      t.timestamps null: false
    end
  end
end
