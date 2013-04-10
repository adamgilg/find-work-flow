class CreateJobs < ActiveRecord::Migration
  def change
    create_table(:jobs) do |t|
      t.string :title
      t.text :notes
      t.integer :company_id
      t.timestamps
    end
  end
end
