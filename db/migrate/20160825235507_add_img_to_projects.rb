class AddImgToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :img_url, :string
    remove_column :projects, :industry, :string
  end
end
