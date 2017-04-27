class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.references :team1, class_name: :team
      t.references :team2, class_name: :team
      t.references :creator, class_name: :user
      t.column :result, :integer, default: 0

      t.timestamps
    end
  end
end
