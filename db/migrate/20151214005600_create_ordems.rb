class CreateOrdems < ActiveRecord::Migration
  def change
    create_table :ordems do |t|
      t.string :equipamento
      t.string :marca
      t.string :defeito
      t.text :descricao
      t.string :status
      t.float :valor
      t.references :tecnico, index: true, foreign_key: true
      t.references :cliente, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
