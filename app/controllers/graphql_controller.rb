class GraphqlController < ApplicationController
  def execute
    variables = ensure_hash(params[:variables])
    query = params[:query]
    operation_name = params[:operationName]
    context = {
      authorised: authorised?
    }
    result = Unit1Schema.execute(query, variables: variables, context: context, operation_name: operation_name)
    render json: result
  end

  private

  # Handle form data, JSON body, or a blank value
  def ensure_hash(ambiguous_param)
    case ambiguous_param
    when String
      if ambiguous_param.present?
        ensure_hash(JSON.parse(ambiguous_param))
      else
        {}
      end
    when Hash, ActionController::Parameters
      ambiguous_param
    when nil
      {}
    else
      raise ArgumentError, "Unexpected parameter: #{ambiguous_param}"
    end
  end

  def authorised?
    token = request.authorization[7, request.authorization.length]
    decoded_token = JWT.decode(token, OpenSSL::PKey::RSA.new(ENV.fetch('AUTH0_CERTIFICATE')).public_key, true, { algorithm: 'RS256' })
    decoded_token.first.fetch("exp") >= Time.now.to_i
  rescue
    false
  end
end
