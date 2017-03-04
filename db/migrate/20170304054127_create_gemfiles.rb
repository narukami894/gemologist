class CreateGemfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :gemfiles do |t|
      t.text :context
      t.references :project, foreign_key: true
      t.timestamps
    end
  end
end
