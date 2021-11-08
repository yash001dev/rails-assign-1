class CreateJoinTableIndustrysSectors < ActiveRecord::Migration[6.1]
  def change
    create_join_table :industrys, :sectors do |t|
      # t.index [:industry_id, :sector_id]
      # t.index [:sector_id, :industry_id]
    end
  end
end
