class CreateDeveloperTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :developer_teams do |t|
      t.references :developer, foreign_key: true
      t.references :team,      foreign_key: true
      t.timestamps
    end
  end
end
