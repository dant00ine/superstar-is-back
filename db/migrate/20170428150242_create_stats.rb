class CreateStats < ActiveRecord::Migration[5.0]
  def change
    create_table :stats do |t|
      t.references :user, foreign_key: true
      t.integer :rebound
      t.integer :assist
      t.integer :blocks
      t.integer :steals
      t.integer :turn_overs
      t.integer :points
      t.integer :three_points
      t.integer :free_throws
      t.column :level, :integer, default: 0
      t.column :position, :integer, default: 0

      t.timestamps
    end
  end
end
