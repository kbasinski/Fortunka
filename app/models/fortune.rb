class Fortune < ActiveRecord::Base
  # atrybut: quotation
  validates :quotation, :presence => true
  # validates_presence_of :body
  validates_length_of :quotation, :in => 2..128
  # validates_length_of :body, :minimum => 2, :maximum => 128
  validates_uniqueness_of :quotation, :case_sensitive => false

  # atrybut: source
  validates_length_of :source, :in => 4..64, :allow_blank => true
end
