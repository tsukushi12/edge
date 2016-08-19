class CreateTests < ActiveRecord::Migration[5.0]
  def change
    create_table :tests do |t|
      t.string :test1
      t.string :test2
      t.integer :test3

      t.timestamps
    end
  end
end
