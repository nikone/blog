class Post < Garnet::Model
  attr_accessor :id, :header, :content, :created_at

  @@table_name = "posts"
  @@model = Post
  @@mappings = {
    id: :id,
    header: :header,
    content: :content,
    created_at: :created_at
  }

  def created_at
    @created_at.to_s
  end

  def initialize
    @id = nil
    @header = ""
    @content = ""
    @created_at = nil
  end
end