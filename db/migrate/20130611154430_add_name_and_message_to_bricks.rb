class AddNameAndMessageToBricks < ActiveRecord::Migration
  def change
    add_column :bricks, :name, :string
    add_column :bricks, :message, :string
  end
end
