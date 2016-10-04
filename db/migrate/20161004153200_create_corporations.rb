class CreateCorporations < ActiveRecord::Migration[5.0]
  def change
    create_table :corporations do |t|
      t.string :companyName
      t.references :category, foreign_key: true
      t.text :profile
      t.integer :revenue
      t.integer :avgIncome
      t.references :link, foreign_key: true
      t.date :esDate
      t.date :lastUpdateDate

      t.timestamps
    end
  end
end
