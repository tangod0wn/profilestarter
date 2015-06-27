class AddColToProfile < ActiveRecord::Migration
  def change
    add_reference :profiles, :user, index: true, foreign_key: true
    add_column :profiles, :name, :string
    add_column :profiles, :profile_pic, :string
    add_column :profiles, :bio, :text
  end
end
