defmodule MessengyrWeb.LayoutView do
  use MessengyrWeb, :view
  alias Guardian.Plug

  # Add this function:
  def logged_in?(conn) do
  	Plug.authenticated?(conn, [])
  end

  def username(conn) do

    user = Plug.current_resource(conn)

    %{username: username} = user

    username
  end

  def avatar(conn) do
    user = Plug.current_resource(conn)

    # We extract the email with pattern matching:
    %{email: email} = user

    # Hash the email address and make it URL-compliant:
    hash_email = :crypto.hash(:md5, email) |> Base.encode16 |> String.downcase 

    # Return the image URL:
    "http://www.gravatar.com/avatar/#{hash_email}"
  end

end
