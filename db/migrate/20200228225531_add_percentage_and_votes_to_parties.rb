class AddPercentageAndVotesToParties < ActiveRecord::Migration[6.0]
  def change
    add_column :parties, :percentage, :decimal
    add_column :parties, :votes, :integer

    add_index :parties, :percentage
    add_index :parties, :votes
  end
end
