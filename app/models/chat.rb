class Chat < ApplicationRecord


  has_many :messages, dependent: :destroy
  has_many :subscriptions, dependent: :destroy
  has_many :users, through: :subscriptions
  validates :identifier, presence: true, uniqueness: true, case_sensitive: false
  validates :type, presence: true

  scope :pers_chats, -> { where(type: 'PersChat') }
  scope :com_chats, -> { where(type: 'ComChat') }

  include PublicActivity::Common

  class << self
    def types
      %w(ComChat PersChat)
    end
  end

  def other_user
    self.subscriptions.where.not(user_id: User.current.id).first.user
  end

end

# == Schema Information
#
# Table name: chats
#
#  id         :integer          not null, primary key
#  identifier :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string
#  type       :string
#
