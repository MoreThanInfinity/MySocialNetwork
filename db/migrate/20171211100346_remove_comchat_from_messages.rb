class RemoveComchatFromMessages < ActiveRecord::Migration[5.1]
  def change
    remove_reference :messages, :comchat, foreign_key: true
  end
end
