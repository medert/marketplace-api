module Response
  def json_response(msg, data, status = :ok)
    render json: {message: msg, data: data},status: status
  end
end
