class Tweeet < ApplicationRecord
    default_scope -> { order(created_at: :desc) }
    validates :tweeet, presence: true, length: { maximum: 1000 }

end
