defmodule MessengyrWeb.ChatController do
    use MessengyrWeb, :controller
    import Plug.Conn

    def index(conn, _params) do
      render conn
    end

end
