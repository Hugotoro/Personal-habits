class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.text :description
      t.boolean :check
      t.boolean :tracker_check
      t.date :end_date
      t.references :dashboard, null: false, foreign_key: true

      t.timestamps
    end
  end
end
