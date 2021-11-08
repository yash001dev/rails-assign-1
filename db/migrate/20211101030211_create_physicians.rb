class CreatePhysicians < ActiveRecord::Migration[6.1]
  def change
    create_table :physicians do |t|
      t.string :name
      t.string :email
      t.string :unique_id

      t.timestamps
    end
  end
end
