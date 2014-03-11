class RemoveBundleIdFromDesigns < ActiveRecord::Migration
  def change
  	remove_column :designs, :bundle_id
  end
end
