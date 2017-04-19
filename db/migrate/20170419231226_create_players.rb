class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.integer :strength
      t.integer :speed
      t.integer :pass

      t.timestamps
    end
  end
end
