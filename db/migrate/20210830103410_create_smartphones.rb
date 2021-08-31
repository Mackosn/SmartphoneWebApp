class CreateSmartphones < ActiveRecord::Migration[6.1]
  def change
    create_table :smartphones do |t|
      t.string :Name
      t.string :Model
      t.string :Storage_memory
      t.string :RAM_memory
      t.string :Processor
      t.string :Camera

      t.timestamps
    end
  end
end
