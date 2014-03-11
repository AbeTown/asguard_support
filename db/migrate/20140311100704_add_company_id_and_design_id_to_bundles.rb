class AddCompanyIdAndDesignIdToBundles < ActiveRecord::Migration
  def change
  	add_column :bundles, :company_id, :integer
  	add_column :bundles, :design_id, :integer
  end
end
