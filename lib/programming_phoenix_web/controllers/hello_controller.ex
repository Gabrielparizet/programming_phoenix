defmodule ProgrammingPhoenixWeb.HelloController do
  use ProgrammingPhoenixWeb, :controller

  def world(conn, _params) do

    # render(conn, "world.html")
    render(conn, :world) #(conn, :world, layout: false)
  end
end
