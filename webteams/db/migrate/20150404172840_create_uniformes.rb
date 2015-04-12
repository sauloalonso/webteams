class CreateUniformes < ActiveRecord::Migration
  def change
    create_table :uniformes do |t|
      t.string :equipe
      t.references :cor, index: true
      t.references :modelo, index: true

      t.timestamps null: false
    end
    add_foreign_key :uniformes, :cores
    add_foreign_key :uniformes, :modelos
  end
end
