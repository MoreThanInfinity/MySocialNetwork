# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  content     :text
#  attachments :string
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  post_pict   :string
#
# Indexes
#
#  index_posts_on_user_id  (user_id)
#

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
