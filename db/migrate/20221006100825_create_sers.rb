class CreateSers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :user
      t.string :name
      t.string :nickname
      t.string :email

      t.timestamps
    end
  end
end
