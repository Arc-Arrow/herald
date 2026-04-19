# 14) Entity Relationship Map (Conceptual)

## In simple terms

This is a conceptual relationship graph, not strict database schema.

```mermaid
flowchart TD
  Builder[Builder]
  Staff[Staff]
  Player[Player]

  World[World]
  Zone[Zone]
  Room[Room]
  Path[Path]

  MobTemplate[Mob Template]
  ItemTemplate[Item Template]
  Quest[Quest]
  Loader[Loader]
  Condition[Condition]
  Faction[Faction]

  Builder -->|authors| World
  Builder -->|edits| Zone
  Builder -->|edits| Room
  Builder -->|creates| MobTemplate
  Builder -->|creates| ItemTemplate
  Builder -->|creates| Quest

  World -->|contains| Zone
  Zone -->|contains| Room
  Zone -->|contains| Path
  Zone -->|contains| Loader
  Zone -->|contains| Quest

  Room -->|connected by| Path
  Room -->|loads via| Loader

  Quest -->|references| Room
  Quest -->|references| ItemTemplate
  Quest -->|references| MobTemplate

  MobTemplate -->|belongs to / reacts with| Faction
  Player -->|enters| World
  Player -->|moves through| Room
  Player -->|interacts with| MobTemplate
  Player -->|uses| ItemTemplate
  Player -->|progresses| Quest

  Staff -->|reviews worlds| World
  Staff -->|operates runtime for| World
```

## Related pages

- [06-builder-architecture.md](./06-builder-architecture.md)
- [07-game-runtime.md](./07-game-runtime.md)
- [08-admin-and-ops.md](./08-admin-and-ops.md)
- [13-system-map.md](./13-system-map.md)
