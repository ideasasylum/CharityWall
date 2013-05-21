class CreateBricks < ActiveRecord::Migration
  def change
    create_table :bricks do |t|
      t.integer :amount
      t.string :email
      t.string :colour

      t.timestamps
    end
  end
end
