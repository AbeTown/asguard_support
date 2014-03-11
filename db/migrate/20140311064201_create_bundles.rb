class CreateBundles < ActiveRecord::Migration
  def change
    create_table :bundles do |t|
      t.integer :uid
      t.text :description
      t.datetime :bundled_at
      t.text :errors
      t.string :environment
      t.string :firmware_revision

      t.timestamps
    end
  end
end
