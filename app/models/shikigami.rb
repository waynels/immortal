class Shikigami < ApplicationRecord
  enum level: { n: 0, r: 1, sr: 2, ssr: 3, sp: 4 }

  has_many :chips

  scope :showed, -> { where(show: true) }
end

# == Schema Information
#
# Table name: shikigamis
#
#  id         :integer          not null, primary key
#  name       :string
#  level      :integer          default("ssr")
#  limited    :boolean          default(FALSE)
#  show       :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
