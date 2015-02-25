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
    @post.save
  end

  def index
    @posts = Post.findAll
  end

  def edit
    @post = Post.find(params["id"])
  end

  def update
    @post = Post.find(params["id"])
    @post.header = params["post"]["header"]
    @post.content = params["post"]["content"]
    @post.save
  end

  def delete
    Post.delete(params["id"])
  end
end