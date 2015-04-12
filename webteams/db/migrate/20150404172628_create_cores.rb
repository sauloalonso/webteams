class CreateCores < ActiveRecord::Migration
  def change
    create_table :cores do |t|
      t.string :nome
      t.string :hexadecimal

      t.timestamps null: false
    end
  end
end
