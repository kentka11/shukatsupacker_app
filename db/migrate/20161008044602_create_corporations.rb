class CreateCorporations < ActiveRecord::Migration[5.0]
  def change
    create_table :corporations do |t|
      t.string :name
      t.references :category, foreign_key: true
      t.text :profile
      t.integer :revenue
      t.integer :average_income
      t.date :es_due_date

      t.timestamps
    end
  end
end
