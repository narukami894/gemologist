class AddSomeColumns < ActiveRecord::Migration[5.0]
  def change
    add_column :developers, :uid,      :string, null: false, default: ''
    add_column :developers, :provider, :string, null: false, default: ''
    add_column :developers, :image,    :string
    add_index  :developers, [:uid, :provider], unique: true
  end
end
