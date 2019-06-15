class CreateShikigamis < ActiveRecord::Migration[5.2]
  def change
    create_table :shikigamis do |t|
      t.string :name
      t.integer :level, default: 3
      t.boolean :limited, default: false
      t.boolean :show, default: false
      t.timestamps
    end
  end
end
