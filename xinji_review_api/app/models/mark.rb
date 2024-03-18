class Mark < ApplicationRecord
    enum status: [:unactive, :active]
    enum word_status: [:unknow, :learned], _prefix: :word

    belongs_to :markable, polymorphic: true
    belongs_to :user
end
