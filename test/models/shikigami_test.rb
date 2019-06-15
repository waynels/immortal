# == Schema Information
#
# Table name: shikigamis
#
#  id         :integer          not null, primary key
#  level      :integer          default(3)
#  limited    :boolean          default(FALSE)
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ShikigamiTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
