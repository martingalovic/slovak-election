class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|
      t.references :party,  foreign_key: true
      t.integer :ballot_position
      t.string :first_name
      t.string :last_name
      t.string :title
      t.integer :age
      t.string :employment
      t.string :city
      t.string :note

      t.timestamps
    end

    add_index :subjects, [:party_id, :ballot_position], unique: true
    add_index :subjects, [:first_name, :last_name]
    add_index :subjects, :title
    add_index :subjects, :employment
    add_index :subjects, :age
    add_index :subjects, :city
    add_index :subjects, :note
  end
end
