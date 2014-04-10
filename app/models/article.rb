class Article < ActiveRecord::Base
  # Filter the empty string out of tags array before persisting
  # Useful so we can use checkboxes
  before_save :filter_tags

  private
    def filter_tags
      self.tags = self.tags.select { |e| e if e.present? }
    end
end
