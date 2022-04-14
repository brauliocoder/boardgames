class Boardgame < ApplicationRecord
  has_one_attached :board
  has_one_attached :instruction
  has_many_attached :pictures

  validates_presence_of :name, :rules, :instruction
  # validate :instructions_in_pdf
  validates :board, presence: true, blob: { content_type: ['image/jpg', 'image/jpeg', 'image/png'] }
  validates :instruction, presence: true, blob: { content_type: 'application/pdf' }
  validates :pictures, presence: true, blob: { content_type: ['image/jpg', 'image/jpeg', 'image/png'] }

  # def instructions_in_pdf
  #   if !instruction.nil? && !instruction.blob.content_type.in?(%('application/pdf'))
  #     errors.add(:instruction, 'must be a pdf file')
  #   end
  # end



end