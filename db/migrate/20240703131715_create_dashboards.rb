class CreateDashboards < ActiveRecord::Migration[7.1]
  def change
    create_table :dashboards do |t|
      t.string :title, null: false
      t.text :description
      t.date :date_goal

      t.timestamps
    end
  end
end
