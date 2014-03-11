class CreateDesigns < ActiveRecord::Migration
  def change
    create_table :designs do |t|
      t.integer :bundle_id
      t.string :design_role
      t.string :design_type
      t.string :design_subtype
      t.string :connection_type

      t.timestamps
    end
  end
end
