class AddHostNameToBbs < ActiveRecord::Migration[5.0]
  def change
    add_column :bbs, :hostname, :string
  end
end
