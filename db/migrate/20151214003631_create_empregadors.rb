class CreateEmpregadors < ActiveRecord::Migration
  def change
    create_table :empregadors do |t|
      t.string :nome
      t.string :telefone
      t.string :endereco
      t.string :cnpj

      t.timestamps null: false
    end
  end
end
