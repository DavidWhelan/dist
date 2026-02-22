import Config
config :dist, :dns_cluster_query, ["development.local"]

config :libcluster,
  debug: true,
  topologies: [
    gossip: [
      strategy: Cluster.Strategy.Gossip,
      config: [],
      connect: {:net_kernel, :connect_node, []},
      disconnect: {:erlang, :disconnect_node, []},
      list_nodes: {:erlang, :nodes, [:connected]}
    ]
  ]
