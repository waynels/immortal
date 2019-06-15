class CreateChips < ActiveRecord::Migration[5.2]
  def change
    create_table :chips do |t|
      t.integer :user_id
      t.integer :shikigami_id
      t.integer :amount, default: 0
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
