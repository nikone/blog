class PostMapper < Garnet::Mapper
  @@table_name = "posts"
  @@model = Post
  @@mappings = {
    id: :id,
    header: :header,
    content: :content,
    created_at: :created_at
  }

  def created_at
    @model.created_at.to_s
  end
end