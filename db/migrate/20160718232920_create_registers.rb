class CreateRegisters < ActiveRecord::Migration
  def change
    create_table :registers do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
