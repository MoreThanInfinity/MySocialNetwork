class AddComchatToMessages < ActiveRecord::Migration[5.1]
  def change
    add_reference :messages, :comchat, foreign_key: true
  end
end
