class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.boolean :checked
      t.datetime :due_datetime

      t.timestamps
    end
  end
end
