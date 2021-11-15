class ChangeIndustrysSectorsToIndustriesSectors < ActiveRecord::Migration[6.1]
  def change
    rename_table :industrys_sectors, :industries_sectors
  end
end
