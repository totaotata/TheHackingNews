class AddLinkUserToComment < ActiveRecord::Migration[5.2]
  def change
    add_reference :links, :user, foreign_key: true
    add_reference :comments, :user, foreign_key: true
    add_reference :comments, :link, foreign_key: true
  end
end
