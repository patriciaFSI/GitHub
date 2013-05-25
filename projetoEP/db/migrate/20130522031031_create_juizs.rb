class CreateJuizs < ActiveRecord::Migration
  def change
    create_table :juizs do |t|
      t.string :Nome
      t.integer :Idade
      t.string :Nacionalidade

      t.timestamps
    end
  end
end
