# Herald Architecture Wiki

This wiki explains the **Herald frontend** (Written Realms) in plain English for product and founder audiences.

## In simple terms

Herald is a single web app with four big product surfaces:

1. **Public marketing site** (`/`, `/about`, etc.)
2. **Player lobby** (discover worlds, manage characters)
3. **Live game client** (real-time play over WebSocket)
4. **World builder + staff tools** (create and operate worlds)

## Major technical layers

- **UI layer:** Vue views/components (`src/views`, `src/components`)
- **Navigation layer:** Vue Router route groups (`src/router/index.ts`)
- **State layer:** Vuex modules (`src/store/modules`)
- **Service layer:** Axios REST calls + WebSocket channels (`src/core/axiosInterceptors.ts`, `store/modules/game.ts`, `store/modules/forge.ts`)

## Start here (recommended order)

1. [01-system-overview.md](./01-system-overview.md)
2. [04-routing-and-app-shape.md](./04-routing-and-app-shape.md)
3. [05-state-and-data-flow.md](./05-state-and-data-flow.md)
4. [06-builder-architecture.md](./06-builder-architecture.md)
5. [07-game-runtime.md](./07-game-runtime.md)
6. [08-admin-and-ops.md](./08-admin-and-ops.md)

## If you only read three pages, read these first

- [01-system-overview.md](./01-system-overview.md)
- [05-state-and-data-flow.md](./05-state-and-data-flow.md)
- [15-executive-summary.md](./15-executive-summary.md)

## Full table of contents

- [01-system-overview.md](./01-system-overview.md)
- [02-major-domains.md](./02-major-domains.md)
- [03-user-experiences.md](./03-user-experiences.md)
- [04-routing-and-app-shape.md](./04-routing-and-app-shape.md)
- [05-state-and-data-flow.md](./05-state-and-data-flow.md)
- [06-builder-architecture.md](./06-builder-architecture.md)
- [07-game-runtime.md](./07-game-runtime.md)
- [08-admin-and-ops.md](./08-admin-and-ops.md)
- [09-dependency-graph.md](./09-dependency-graph.md)
- [10-key-files-and-folders.md](./10-key-files-and-folders.md)
- [11-questions-and-unknowns.md](./11-questions-and-unknowns.md)
- [12-glossary.md](./12-glossary.md)
- [13-system-map.md](./13-system-map.md)
- [14-entity-relationship-map.md](./14-entity-relationship-map.md)
- [15-executive-summary.md](./15-executive-summary.md)
