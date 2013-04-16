class AddLastContactedToJobs < ActiveRecord::Migration
  def change
    add_column(:jobs, :last_contacted, :datetime)
  end
end
