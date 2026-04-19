# 06) Builder Architecture

## In simple terms

The builder is the content studio. It lets creators shape a world without writing backend code.

Think of it as a city planner tool with nested layers:

**World -> Zone -> Room -> Rules/Actions/Loads/Quests/Templates**

## Why this exists

The product depends on user-created worlds. Builder is the supply engine for gameplay content.

## Main builder structure

- Frame + navigation: `src/components/builder/BuilderFrame.vue`
- Views by scope:
  - `src/views/builder/world/*`
  - `src/views/builder/zone/*`
  - `src/views/builder/room/*`
- Domain state:
  - `src/store/modules/builder/index.ts`
  - `src/store/modules/builder/worlds/*`
  - `src/store/modules/builder/zones/*`

## Editing hierarchy (appears to be)

- **World:** top-level metadata, map, config, factions, skills, socials, currencies, templates, players/builders
- **Zone:** collection/region of rooms with loads, paths, quests, processions, config
- **Room:** map node with coordinates, exits/doors, checks, actions, details, loads

## Authored systems seen in repo

- **Mobs:** template lists/details, stats/inventory/skills/reactions/quests/crafting/factions
- **Items:** template lists/details, equipment/stats/actions/quests/loads/food/augment
- **Quests:** quest lists/details with objectives and rewards
- **Paths:** zone path lists/details and routing associations
- **Loaders/Rules:** controlled spawning/loading systems tied to zones/rooms
- **Processions:** zone-level authored sequence-like entities (likely scripted movement/flow)
- **Facts/Random profiles/Transformations/Starting equipment:** world-level behavioral/config systems

## How it connects to state/data flow

- Heavy REST CRUD with store actions and generic helpers
- Modal-driven editing forms (`ui/modal`, `EditEntity`, `core/forms.ts`)
- Map-centric interaction for room/zone selection (`components/ui/Map.vue`)
- Some builder admin actions trigger forge jobs and live pub updates

## What would break if this changes

- Creator productivity
- Runtime content quality and consistency
- Staff review throughput
- Player-facing world correctness

## What is still unclear

- Exact backend validation and publish rules
- Full semantics of processions/loaders/facts without backend docs
- Permission nuances across builder ranks (rank checks are visible, full policy is backend)

## Related pages

- [05-state-and-data-flow.md](./05-state-and-data-flow.md)
- [07-game-runtime.md](./07-game-runtime.md)
- [08-admin-and-ops.md](./08-admin-and-ops.md)
- [14-entity-relationship-map.md](./14-entity-relationship-map.md)
