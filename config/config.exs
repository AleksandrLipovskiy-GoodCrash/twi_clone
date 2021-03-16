# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :twi_clone,
  ecto_repos: [TwiClone.Repo]

# Configures the endpoint
config :twi_clone, TwiCloneWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "kjeb5VVdQq5f72qW41DVxEfVcEgfZQ8MeS4eM3fELSOo2BuQXCfxpjf595Lc/t88",
  render_errors: [view: TwiCloneWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: TwiClone.PubSub,
  live_view: [signing_salt: "mRgfkYhc"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
