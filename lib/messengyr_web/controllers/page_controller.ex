defmodule MessengyrWeb.PageController do
  use MessengyrWeb, :controller
  alias Messengyr.Accounts

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
    changeset = Accounts.register_changeset()

    render conn, user_changeset: changeset
  end

  def create_user(conn, %{"user" => user_params}) do
    IO.puts "Create user!"
    IO.inspect user_params

    Accounts.create_user(user_params)
    |> IO.inspect
  end

end
