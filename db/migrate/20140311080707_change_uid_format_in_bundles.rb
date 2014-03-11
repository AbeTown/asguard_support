class ChangeUidFormatInBundles < ActiveRecord::Migration
  def change
  	change_column :bundles, :uid, :string
  end
end
