class Review < ActiveRecord::Base
  belongs_to :item

  def add_to_item
    save unless bad_words?
  end

  private
    def bad_words?
      description =~ /BAD_WORD/
    end
end
