class AddStadiumRefToTeams < ActiveRecord::Migration[7.0]
  def change
    add_reference :teams, :stadium, null: false, foreign_key: true
  end
end
