class ChangeErrorsToBundleErrors < ActiveRecord::Migration
  def change
  	rename_column :bundles, :errors, :bundle_errors
  end
end
