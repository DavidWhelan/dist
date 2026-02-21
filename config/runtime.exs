import Config
config :dist, :dns_cluster_query, ["development.local"]

config :libcluster,
  topologies: [
    epmd: [
      strategy: Cluster.Strategy.Epmd,
      config: [hosts: [:"dist@192.168.0.189", :"dist@192.168.0.190", :"dist@192.168.0.18"]],
      connect: {:net_kernel, :connect_node, []},
      disconnect: {:erlang, :disconnect_node, []},
      list_nodes: {:erlang, :nodes, [:connected]}
    ]
  ]
