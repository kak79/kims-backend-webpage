class CreatePortfolioToc < ActiveRecord::Migration[6.1]
  def change
    create_table :portfolio_tocs do |t|
      t.integer :portfolio_id
      t.string :headers

      t.timestamps
    end
  end
end
