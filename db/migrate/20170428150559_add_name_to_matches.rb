class AddNameToMatches < ActiveRecord::Migration[5.0]
  def change
    add_column :matches, :name, :string
    add_column :matches, :date, :datetime
  end
end
