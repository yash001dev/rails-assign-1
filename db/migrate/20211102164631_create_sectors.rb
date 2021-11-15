class CreateSectors < ActiveRecord::Migration[6.1]
  def change
    create_table :sectors do |t|
      t.string :name

      t.timestamps
    end
  end
end
