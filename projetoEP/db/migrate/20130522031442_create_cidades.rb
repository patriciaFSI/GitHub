class CreateCidades < ActiveRecord::Migration
  def change
    create_table :cidades do |t|
      t.string :Nome
      t.string :Estado
      t.string :Sigla
      t.integer :Codigo_de_area

      t.timestamps
    end
  end
end
