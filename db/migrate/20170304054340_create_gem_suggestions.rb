class CreateGemSuggestions < ActiveRecord::Migration[5.0]
  def change
    create_table :gem_suggestions do |t|
      t.text :sentence, null: false
      t.references :developer, foreign_key: true
      t.references :gemfile, foreign_key: true
      t.timestamps
    end
  end
end
