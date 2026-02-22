import Config

config :libcluster,
  topologies: [
    gossip: [
      strategy: Cluster.Strategy.Gossip
    ]
  ]

config :syn,
  scopes: [:dist]
