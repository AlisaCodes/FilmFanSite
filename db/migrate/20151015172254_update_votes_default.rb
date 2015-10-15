class UpdateVotesDefault < ActiveRecord::Migration
  def change
    change_column_default(:films, :votes, 0)
  end
end
