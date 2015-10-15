class AddVotesColumn < ActiveRecord::Migration
  def change
    add_column :films, :votes, :integer
  end
end
