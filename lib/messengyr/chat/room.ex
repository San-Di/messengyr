defmodule Messengyr.Chat.Room do
  use Ecto.Schema
  import Ecto.Changeset
  alias Messengyr.Chat.Room


  schema "rooms" do

    timestamps()
  end

  @doc false
  def changeset(%Room{} = room, attrs) do
    room
    |> cast(attrs, [])
    |> validate_required([])
  end
end
