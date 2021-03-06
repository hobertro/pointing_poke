# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :point_poke_front, PointPokeFrontWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "BmGqaStL72ff5M+AGt/h5tGsMCqirIJbz4Ux5X71pVpoHLVb+PZ2IUSM1Xi2PP2v",
  render_errors: [view: PointPokeFrontWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PointPokeFront.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "SECRET_SALT"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
