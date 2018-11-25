class AddDueDateToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :due_date, :datetime
  end
end
