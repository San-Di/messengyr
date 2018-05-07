defmodule Messengyr.Chat.Message do
  use Ecto.Schema
  import Ecto.Changeset
  alias Messengyr.Chat.Message


  schema "messages" do
    field :text, :string

    timestamps()
  end

  @doc false
  def changeset(%Message{} = message, attrs) do
    message
    |> cast(attrs, [:text])
    |> validate_required([:text])
  end
end
