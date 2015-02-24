class PostsController < Garnet::Controller
  def new
    @post = Post.new
  end

  def create
    post_params = params["post"]
    @post = Post.new
    @post.header = post_params["header"]
    @post.content = post_params["content"]
    @post.created_at = Time.now

    PostMapper.new.save(@post)
  end

  def index
    @posts = PostMapper.findAll
  end

  def edit
    @post = PostMapper.find(params["id"])
  end

  def update
    @post = PostMapper.find(params["id"])
    @post.header = params["post"]["header"]
    @post.content = params["post"]["content"]
    PostMapper.new.save(@post)
  end

  def delete
    PostMapper.delete(params["id"])
  end
end