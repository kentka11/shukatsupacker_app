class CreateCorporations < ActiveRecord::Migration[5.0]
  def change
    create_table :corporations do |t|
      t.string :name
      t.references :industry
      t.text :profile
      t.text :chara
      t.text :address
      t.text :homepage_url
      t.text :minshu_url
      t.integer :revenue
      t.integer :annual_salary
      t.integer :es_deadline

      t.timestamps
    end
  end
end
