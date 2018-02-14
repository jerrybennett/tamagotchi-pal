class CreateTamagotchis < ActiveRecord::Migration[5.1]
  def change
    create_table :tamagotchis do |t|

      t.string :name
      t.string :owner

      t.integer :age
      t.integer :love, default: 1
      t.integer :strength, default: 1

      t.timestamps
    end
  end
end
