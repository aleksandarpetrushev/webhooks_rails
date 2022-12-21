class CreateVeryDummyModel < ActiveRecord::Migration[7.0]
  def change
    create_table :very_dummy_models do |t|
      t.integer :a

      t.timestamps
    end
  end
end
