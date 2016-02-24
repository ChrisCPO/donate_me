class CreateSavings < ActiveRecord::Migration
  def change
    create_table :savings do |t|
      t.decimal :price,  default: 0.00, null: false
      t.string :name, null: false, default: ""

      t.timestamps null: false
    end
  end
end
