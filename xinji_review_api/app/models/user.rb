class User < ApplicationRecord
    has_many :marks
    has_many :words, through: :marks, source: :markable, source_type: 'Word'
end
