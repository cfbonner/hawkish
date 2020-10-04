class AddUserToSkaters < ActiveRecord::Migration[6.0]
  def change
    add_reference :skaters, :user, foreign_key: true
  end
end
