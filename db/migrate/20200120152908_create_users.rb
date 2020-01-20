class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.text :first_name
      t.string :status

      t.timestamps
    end
    add_index :users, :status
  end
end
