require 'sqlite3'

class PostMapper
  @@db = SQLite3::Database.new File.join "db", "app.db"
  @@table_name = "posts"
  @@model = Post
  @@mappings = {
    id: :id,
    header: :header,
    content: :content,
    created_at: :created_at
  }

  def save(post)
    if post.id
      @@db.execute("UPDATE posts SET header = ?, content = ?, created_at = ? WHERE id = ?", [post.header, post.content, post.created_at, post.id])
    else
      @@db.execute "INSERT INTO posts (header, content, created_at) VALUES (?,?,?)", [post.header, post.content, post.created_at.to_s]
    end
  end

  def self.find(id)
    row = @@db.execute("SELECT #{@@mappings.keys.join(',')} FROM #{@@table_name} WHERE id = ?", id).first
    self.map_row_to_object(row)
  end

  def self.map_row_to_object(row)
    model = @@model.new

    @@mappings.each_value.with_index do |attribute, index|
      model.send("#{attribute}=", row[index])
    end
    model
  end

  def self.findAll
    data = @@db.execute "SELECT #{@@mappings.keys.join(',')} FROM #{@@table_name}"
    data.map do |row|
      self.map_row_to_object(row)
    end
  end

  def self.delete(id)
    data = @@db.execute "DELETE from posts WHERE id = ?", id
  end
end