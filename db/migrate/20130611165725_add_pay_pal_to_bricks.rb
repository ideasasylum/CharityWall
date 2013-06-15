class AddPayPalToBricks < ActiveRecord::Migration
  def change
    add_column :bricks, :paypal_response, :text
    add_column :bricks, :paid_on, :timestamp
    add_column :bricks, :paid, :boolean
    add_index :bricks, :paid
  end
end
