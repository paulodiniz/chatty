defmodule Chatty.RoomChannel do
  use Phoenix.Channel

  def join("rooms:chatroom", _auth_msg, socket) do
    {:ok, socket}
  end

  def handle_in("joined", %{"person" => person}, socket) do
    broadcast! socket, "joined", %{person: person}
    {:noreply, socket}
  end

  def handle_in("new_msg", %{"body" => body, "from" => from}, socket) do
    broadcast! socket, "new_msg", %{body: body, from: from}
    {:noreply, socket}
  end

end