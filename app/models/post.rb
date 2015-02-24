class Post
  attr_accessor :id, :header, :content, :created_at

  def initialize
    @id = nil
    @header = ""
    @content = ""
    @created_at = nil
  end
end