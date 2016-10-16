class CreateEsDeadlines < ActiveRecord::Migration[5.0]
  def change
    create_table :es_deadlines do |t|
      t.integer :cop_id
      t.date :date_2018
      t.timestamps
    end
  end
end
