class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      # t.created_at :datetime
      # t.updated_at :datetime 

      t.timestamps
    end
  end
end
