class AddTypeToChats < ActiveRecord::Migration[5.1]
  def change
    add_column :chats, :type, :string
  end
end
