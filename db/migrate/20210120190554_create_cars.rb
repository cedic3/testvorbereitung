class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :cr_model
      t.integer :cr_year
      t.float :cr_usage
      t.float :cr_fuel
      t.belongs_to :producer_id, foreign_key: { to_table: :producers }, index: true

      t.timestamps
    end
  end
end
