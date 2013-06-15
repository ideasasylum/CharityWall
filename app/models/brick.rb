class Brick < ActiveRecord::Base
  attr_accessible :amount, :colour, :email, :name, :message

  def self.paid
    where(paid: true)
  end
end
