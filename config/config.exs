# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenixkubernetes,
  ecto_repos: [Phoenixkubernetes.Repo]

# Configures the endpoint
config :phoenixkubernetes, Phoenixkubernetes.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "RpjdeuF9BZULkTViYR/QzGe+t2KSK68qT8L6Ht+OXryTfIdUjdkGYQacddSpjt/n",
  render_errors: [view: Phoenixkubernetes.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Phoenixkubernetes.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

  config :mix_docker, image: "phoenixkubernetes"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
