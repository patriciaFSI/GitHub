class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :Nome
      t.string :Senha
      t.string :Idioma

      t.timestamps
    end
  end
end
