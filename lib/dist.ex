defmodule Dist do
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      {DNSCluster, query: Application.get_env(:dist, :dns_cluster_query)}
    ]

    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
