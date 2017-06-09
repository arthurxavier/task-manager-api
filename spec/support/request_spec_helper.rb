module RequestSpecHelper
  def json_body
    #se a variavel tiver vazia, passe o response.body, senao so retorna a variavel
    @json_body ||= JSON.parse(response.body, symbolize_names: true)
  end
end