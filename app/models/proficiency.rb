class Proficiency < ActiveRecord::Base
  #taken from skills as template
  # VALID_CONTEXTS = %w(technical creative)
  belongs_to 	:user
  belongs_to    :skill

  validates :years, :presence => true
  validate :formal, :presence => true

  # private
  # def validate_context
  #   p self.context
  #   self.errors[:context] = "must be one of: #{VALID_CONTEXTS.join(', ')}" unless VALID_CONTEXTS.include? self.context
  # end
end
