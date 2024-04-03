class AddReleaseStatusAndPostStatusToFilm < ActiveRecord::Migration[7.1]
  def change
    add_column :films, :release_status, :integer, default: 0
    add_column :films, :post_status, :integer, default: 0
  end
end
