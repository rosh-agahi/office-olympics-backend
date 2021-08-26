class AddVideoUrlToSubmissions < ActiveRecord::Migration[6.1]
  def change
    add_column :submissions, :videourl, :string
  end
end
