Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :addComment, Types::CommentType do
    description "Adds a comment"
    argument :postId, !types.Int
    argument :name, !types.String
    argument :body, !types.String

    resolve ->(o,args,c) {
      post = Post.find(args[:postId])
      comment = post.comments.build(name: args[:name], body: args[:body])
      comment.save!
      comment
    }
  end
end
