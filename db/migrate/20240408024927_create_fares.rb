class CreateFares < ActiveRecord::Migration[7.0]
  def change
    create_table :fares do |t|
      t.string :routeA
      t.string :routeB
      t.string :transportation
      t.integer :amount
      t.string :remarks

      t.timestamps
    end
  end
end
