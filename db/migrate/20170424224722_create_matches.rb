class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.references :team1
      t.references :team2
      t.column :result, :integer, default: 0

      t.timestamps
    end
  end
end
