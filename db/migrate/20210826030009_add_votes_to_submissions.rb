class AddVotesToSubmissions < ActiveRecord::Migration[6.1]
  def change
    add_column :submissions, :votes, :integer
  end
end
