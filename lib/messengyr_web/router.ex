defmodule MessengyrWeb.Router do
  use MessengyrWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :browser_session do
    plug Messengyr.Auth.Pipeline
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", MessengyrWeb do
    pipe_through [:browser, :browser_session]

    get "/", PageController, :index
    get "/signup", PageController, :signup
    # :signup atom refers to web/templates/page/signup.html.eex
    get "/login", PageController, :login
    post "/signup", PageController, :create_user
    post "/login", PageController, :login_user
    get "/logout", PageController, :logout
    get "/messages", ChatController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", MessengyrWeb do
  #   pipe_through :api
  # end
end
