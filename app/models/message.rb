class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chat, optional: true
  belongs_to :comchat, optional: true
  after_create_commit { MessageBroadcastJob.perform_later self }

end

# == Schema Information
#
# Table name: messages
#
#  id         :integer          not null, primary key
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  chat_id    :integer
#
# Indexes
#
#  index_messages_on_chat_id  (chat_id)
#  index_messages_on_user_id  (user_id)
#
