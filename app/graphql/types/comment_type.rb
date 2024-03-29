Types::CommentType = GraphQL::ObjectType.define do
  name "Comment"
  field :id, !types.ID
  field :name, !types.String
  field :body, !types.String
  field :created_at, !types.String
end