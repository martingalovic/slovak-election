class CreateTerritories < ActiveRecord::Migration[6.0]
  def change
    create_table :territories do |t|
      t.integer :region_code
      t.string :region_name
      t.integer :subregion_code
      t.string :subregion_name
      t.integer :district_code
      t.string :district_name
      t.integer :city_code
      t.string :city_name
      t.integer :zones

      t.timestamps
    end
  end
end
