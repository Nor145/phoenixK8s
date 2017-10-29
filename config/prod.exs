use Mix.Config

config :phoenixkubernetes, Phoenixkubernetes.Endpoint,
  http: [port: "${PORT}"],
  url: [host: "${HOST}", port: "${PORT}"],
  secret_key_base: "${SECRET_KEY_BASE}",
  server: true

# Do not print debug messages in production
config :logger, level: :info

# Configure your database
config :phoenixkubernetes, Phoenixkubernetes.Repo,
  adapter: Ecto.Adapters.Postgres,
  hostname: "${DB_HOSTNAME}",
  username: "${DB_USERNAME}",
  password: "${DB_PASSWORD}",
  database: "${DB_NAME}",
  pool_size: 20

config :peerage, via: Peerage.Via.Dns,
  dns_name: "phoenixkubernetes-service-headless.default.svc.cluster.local",
  app_name: "phoenixkubernetes",
  interval: 5

