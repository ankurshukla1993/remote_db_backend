class SqlQuery < ApplicationRecord
	belongs_to :data_source
	has_many :metrics
end
