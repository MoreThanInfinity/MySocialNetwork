class Follow < ActiveRecord::Base

  extend ActsAsFollower::FollowerLib
  extend ActsAsFollower::FollowScopes

  belongs_to :followable, polymorphic: true
  belongs_to :follower,   polymorphic: true

  def block!
    self.update_attribute(:blocked, true)
  end

  include PublicActivity::Common
end

# == Schema Information
#
# Table name: follows
#
#  id              :integer          not null, primary key
#  followable_type :string           not null
#  followable_id   :integer          not null
#  follower_type   :string           not null
#  follower_id     :integer          not null
#  blocked         :boolean          default(FALSE), not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  fk_followables                                      (followable_id,followable_type)
#  fk_follows                                          (follower_id,follower_type)
#  index_follows_on_followable_type_and_followable_id  (followable_type,followable_id)
#  index_follows_on_follower_type_and_follower_id      (follower_type,follower_id)
#
