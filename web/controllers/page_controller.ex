defmodule Phoenixkubernetes.PageController do
  use Phoenixkubernetes.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
