Types::PostType = GraphQL::ObjectType.define do
  name "Post"
  description "A blog post"

  field :id, !types.ID
  field :title, !types.String
  field :intro, !types.String
  field :body, !types.String
  field :comments, types[!Types::CommentType]
  field :created_at, !types.String
end