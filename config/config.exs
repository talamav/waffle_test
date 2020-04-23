# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :waffle_test,
  ecto_repos: [WaffleTest.Repo]

# Configures the endpoint
config :waffle_test, WaffleTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "aT9AioOETc8FD/mXU43uDq125kkTAUgXE8l+gamEGZEW1JDgRM2YSoDEmnN53kx1",
  render_errors: [view: WaffleTestWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: WaffleTest.PubSub,
  live_view: [signing_salt: "EjOt5kdE"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
