class Mark < ApplicationRecord
    enum status: [:unknow, :learned]

    belongs_to :markable, polymorphic: true
    belongs_to :user
end
