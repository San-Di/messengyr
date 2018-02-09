defmodule Messengyr.Accounts do
    @moduledoc """
    
    """
    import Ecto.Changeset
    alias Messengyr.Accounts.User
    alias Messengyr.Repo

    @doc """
    
        ## Example 
            iex> 

    """

    def create_user(params) do
    
        # # Create a user struct:
        # user = %User{}

        # # Create the changeset and do some validation:
        # user_changeset = change(user, %{username: params.username})
        # user_changeset = validate_required(user_changeset, :email)

        # # Return the changeset
        # user_changeset
        
        # %User{}
        # |> change(%{username: params.username})
        # |> validate_required(:email)

        # %User{}
        # |> cast(params, [:username, :email, :password])
        # |> validate_required(:email)

        %User{}
        |> cast(params, [:username, :email, :password])
        |> validate_required([:username, :email, :password])
        |> Repo.insert

    end

end
