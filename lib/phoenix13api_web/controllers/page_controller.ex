defmodule Phoenix13apiWeb.PageController do
  use Phoenix13apiWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
