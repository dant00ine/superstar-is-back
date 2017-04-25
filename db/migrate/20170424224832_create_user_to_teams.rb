class CreateUserToTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :user_to_teams do |t|
      t.references :user
      t.references :team

      t.timestamps
    end
  end
end
