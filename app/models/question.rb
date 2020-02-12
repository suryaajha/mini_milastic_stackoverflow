class Question < ApplicationRecord
  has_many :taggings
  has_many :tags, through: :taggings
  belongs_to :user

  def tags=(all_tags)
    all_uniq_tags = all_tags.split(",").collect { |tag| tag.strip.downcase }.uniq
    all_uniq_tags.each do |tag|
      self.tags << Tag.find_or_create_by(name: tag)
    end
  end

end
