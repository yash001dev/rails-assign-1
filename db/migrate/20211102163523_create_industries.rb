class CreateIndustries < ActiveRecord::Migration[6.1]
  def change
    create_table :industries do |t|
      t.string :name
      t.string :email
      t.string :registration_number

      t.timestamps
    end
  end
end
