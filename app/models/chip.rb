class Chip < ApplicationRecord
  enum status: { pending: 0, processing: 1 }

  belongs_to :user
  belongs_to :shikigami
end

# == Schema Information
#
# Table name: chips
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  shikigami_id :integer
#  amount       :integer          default(0)
#  status       :integer          default("pending")
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
