class Post < ApplicationRecord

  belongs_to :user
  validates_presence_of :content
  acts_as_commentable
  acts_as_votable
  self.per_page=5

  mount_uploader :attachments, PostPictUploader
  include PublicActivity::Model
  tracked only: [:create, :like], owner: proc{|_controller, model| model.user}

end

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
