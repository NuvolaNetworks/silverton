class AddOrder2ToPortfolio < ActiveRecord::Migration
  def change
    add_column :portfolios, :order2, :integer
  end
end
