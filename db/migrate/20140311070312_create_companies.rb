class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.integer :bundle_id
      t.string :company_name
      t.text :company_description

      t.timestamps
    end
  end
end
