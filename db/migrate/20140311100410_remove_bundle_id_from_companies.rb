class RemoveBundleIdFromCompanies < ActiveRecord::Migration
  def change
  	remove_column :companies, :bundle_id
  end
end
