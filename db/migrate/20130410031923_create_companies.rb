class CreateCompanies < ActiveRecord::Migration
  def change
    create_table(:companies) do |t|
      t.string :name
      t.string :address
      t.integer :user_id
      t.timestamps
    end
  end
end
