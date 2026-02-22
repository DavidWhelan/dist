defmodule Dist do
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      {Cluster.Supervisor,
       [Application.get_env(:libcluster, :topologies), [name: Dist.ClusterSupervisor]]}
    ]

    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
