# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :messengyr,
  ecto_repos: [Messengyr.Repo]

# Configures the endpoint
config :messengyr, MessengyrWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "iqxNrnLtOC+1Tg9hQeiKLWRNPsTIHuGPSTmSCWKLXBiaCv6B8qZq01V80L6ut46j",
  render_errors: [view: MessengyrWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Messengyr.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
import_config "config.secret.exs"