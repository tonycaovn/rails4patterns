class Review < ActiveRecord::Base
  belongs_to :item

  def add_to_item
    # Your code goes here
  end

  private
    def bad_words?
      description =~ /BAD_WORD/
    end
end
