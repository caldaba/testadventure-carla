class CreateAdventues < ActiveRecord::Migration[5.2]
  def change
    create_table :adventues do |t|
      t.string :carla

      t.timestamps
    end
  end
end
