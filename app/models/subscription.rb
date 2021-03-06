class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :chat

end

# == Schema Information
#
# Table name: subscriptions
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  chat_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null

#
# Indexes
#
#  index_subscriptions_on_chat_id     (chat_id)
#  index_subscriptions_on_user_id     (user_id)
#
