class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.boolean :published
      t.text :desc
      t.date :data

      t.timestamps
    end
  end
end
