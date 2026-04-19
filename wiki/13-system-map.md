# 13) System Map

## In simple terms

High-level architecture map of major frontend parts and connections.

```mermaid
flowchart LR
  Public[Public Site]
  Auth[Auth]
  Lobby[Lobby / Discovery]
  Game[Game Runtime Client]
  Builder[Builder / Editor]
  Staff[Staff / Ops]

  Router[Vue Router]
  Store[Vuex Store]
  API[REST API]
  GameWS[Gameplay WebSocket]
  ForgeWS[Forge WebSocket]

  Public --> Router
  Auth --> Router
  Lobby --> Router
  Builder --> Router
  Staff --> Router
  Game --> Router

  Router --> Store

  Lobby --> API
  Auth --> API
  Builder --> API
  Staff --> API
  Game --> API

  Game --> GameWS
  Builder --> ForgeWS
  Staff --> ForgeWS
  Lobby --> ForgeWS

  API --> Store
  GameWS --> Store
  ForgeWS --> Store

  Store --> Lobby
  Store --> Game
  Store --> Builder
  Store --> Staff
```

## Related pages

- [01-system-overview.md](./01-system-overview.md)
- [05-state-and-data-flow.md](./05-state-and-data-flow.md)
- [09-dependency-graph.md](./09-dependency-graph.md)
- [14-entity-relationship-map.md](./14-entity-relationship-map.md)
