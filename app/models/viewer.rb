class Viewer < ApplicationRecord
  before_create :set_token

  def set_token
    self.token = SecureRandom.hex(10)
  end
end
