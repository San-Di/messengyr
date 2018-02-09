defmodule MessengyrWeb.PageController do
  use MessengyrWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def login(conn, _params) do
    render conn 
    #  If you omit the second parameter, 
    # Phoenix will automatically look for a template with the same name 
    # as your function anyway (so the index/2-function is connected 
    # to index.html.eex).
  end

  def signup(conn, _params) do
    render conn
  end
  
end
