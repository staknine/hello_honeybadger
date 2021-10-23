defmodule HelloHoneybadgerWeb.PageController do
  use HelloHoneybadgerWeb, :controller

  def index(conn, _params) do
    raise ArgumentError, message: "We are testing error reporting with Honeybadger"
    render(conn, "index.html")
  end
end
