class AddNameToSubmissions < ActiveRecord::Migration[6.1]
  def change
    add_column :submissions, :name, :string
  end
end
