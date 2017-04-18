class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :release_year, presence: true, if: :released
  validates :title, uniqueness: true
  validates :release_year, :numericality => { :less_than_or_equal_to => 2017 }, if: :released
end
