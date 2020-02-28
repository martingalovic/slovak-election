class CreateParties < ActiveRecord::Migration[6.0]
  def change
    create_table :parties do |t|
      t.integer :party_number
      t.string :name
      t.string :abbrevation
      t.integer :candidates
      t.string :note

      t.timestamps
    end

    add_index :parties, :party_number, unique: true
    add_index :parties, :name
  end
end
