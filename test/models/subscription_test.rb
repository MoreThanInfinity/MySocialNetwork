# == Schema Information
#
# Table name: subscriptions
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  chat_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  comchat_id :integer
#
# Indexes
#
#  index_subscriptions_on_chat_id     (chat_id)
#  index_subscriptions_on_comchat_id  (comchat_id)
#  index_subscriptions_on_user_id     (user_id)
#

require 'test_helper'

class SubscriptionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
