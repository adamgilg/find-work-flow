class ChangeDateFormatInJobs < ActiveRecord::Migration
  def change
    change_column :jobs, :last_contacted, :date
  end
end
