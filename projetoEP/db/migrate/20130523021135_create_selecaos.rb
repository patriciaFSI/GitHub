class CreateSelecaos < ActiveRecord::Migration
  def change
    create_table :selecaos do |t|
      t.string :Pais
      t.integer :Pontos
      t.integer :Vitorias
      t.integer :Derrotas
      t.integer :Empates
      t.integer :Numero_de_gols
      t.integer :Grupo
      t.integer :Fase_de_eliminacao

      t.timestamps
    end
  end
end
