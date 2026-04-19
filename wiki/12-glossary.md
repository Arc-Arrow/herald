# 12) Glossary

## In simple terms

Plain-English definitions of architecture and domain terms used in this repo.

- **Route:** A URL path that opens a specific screen.
- **Module (store module):** A focused state area in Vuex (auth, game, builder, etc.).
- **State:** The app’s current remembered data in memory.
- **API:** HTTP endpoints used to load/save data.
- **WebSocket:** A live two-way connection for instant events.
- **Loader:** A rule that appears to control what gets spawned/loaded into game contexts.
- **World:** Top-level game space/project authored by creators.
- **Zone:** A region inside a world containing rooms and related content.
- **Room:** A specific location node where players can stand/move/interact.
- **Path:** A predefined traversal/link structure between places (zone/world navigation logic).
- **Item / Item Template:** A concrete in-game item vs its reusable design blueprint.
- **Mob / Mob Template:** A live creature/NPC vs its reusable design blueprint.
- **Quest:** A structured objective/reward flow for players.
- **Faction:** Relationship group affecting stance/reputation/behavior.
- **Player:** A playable character session entity.
- **Builder:** A creator role that edits worlds and content.
- **Staff:** Internal operator/moderator role with privileged controls.
- **Modal:** Popup editing dialog used for forms and workflows.
- **CRUD:** Create, Read, Update, Delete operations.
- **Pub/Sub:** Publish-subscribe event pattern (system broadcasts updates to subscribers).
- **Nexus:** Appears to be runtime/infrastructure node concept used in world operations.
- **Maintenance mode:** Operational state where normal player entry is restricted.

## Related pages

- [01-system-overview.md](./01-system-overview.md)
- [06-builder-architecture.md](./06-builder-architecture.md)
- [07-game-runtime.md](./07-game-runtime.md)
- [11-questions-and-unknowns.md](./11-questions-and-unknowns.md)
