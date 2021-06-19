class Portfolio < ApplicationRecord
  has_one :portfolio_toc, dependent: :destroy
end
