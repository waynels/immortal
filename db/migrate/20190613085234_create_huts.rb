class CreateHuts < ActiveRecord::Migration[5.2]
  def change
    create_table :huts do |t|
      t.string :name
      t.integer :level

      t.timestamps
    end
  end
end
