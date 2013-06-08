class RemoveCategoryFromStories < ActiveRecord::Migration
  def change
    remove_column :stories, :category, :string
  end
end
