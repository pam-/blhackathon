class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :twitter
      t.string :email
      t.text :bio
      t.string :logo

      t.timestamps
    end
  end
end
