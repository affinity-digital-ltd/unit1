Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :addComment, Types::CommentType do
    description "Adds a comment"
    argument :postId, !types.ID
    argument :name, !types.String
    argument :body, !types.String

    resolve ->(obj, args, ctx) {
      if ctx.fetch(:authorised)
        post = Post.find(args[:postId])
        comment = post.comments.build(name: args[:name], body: args[:body])
        comment.save!
        comment
      else
         GraphQL::ExecutionError.new("Please login")
      end
    }
  end
end
