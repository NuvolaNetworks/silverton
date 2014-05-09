class AddOrderToPortfolio < ActiveRecord::Migration
  def change
    add_column :portfolios, :order, :integer
  end
end
