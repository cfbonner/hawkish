class CreateSkaters < ActiveRecord::Migration[6.0]
  def change
    create_table :skaters do |t|
      t.string :name
      t.string :status
      t.string :moves, array: true, default: []

      t.timestamps
    end
  end
end
