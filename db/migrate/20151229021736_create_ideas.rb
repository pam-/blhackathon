class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :name
      t.string :email
      t.string :twitter
      t.text :description

      t.timestamps null: false
    end
  end
end
