require 'graphql/query_resolver'

Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "The query root of this schema"

  field :post do
    type Types::PostType
    argument :id, !types.ID
    description "Find a Post by ID"
    resolve ->(obj, args, ctx) { 
      Post.find(args["id"]) 
    }
  end

  field :posts do
    type types[Types::PostType]
    description "Find all posts"
    resolve ->(obj, args, ctx) {
      GraphQL::QueryResolver.run(Post, ctx, Types::PostType) do
        Post.all
      end
    }
  end
end