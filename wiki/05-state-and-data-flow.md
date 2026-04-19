# 05) State and Data Flow

## In simple terms

When something happens, the app usually follows this pattern:

**UI action -> Vuex action -> API/WebSocket -> Vuex mutation -> UI updates**

## Where state lives

Main store: `src/store/index.ts`

Modules:

- `auth`: token, user profile
- `lobby`: lobby world/chars/leaders
- `game`: live runtime session state (messages, room, player, map, socket)
- `builder`: editor state (world/zone/room/map + submodules)
- `staff`: staff panel/user/nexus/reviews
- `ui`: notifications + modal state
- `forge`: operational WebSocket connection

## REST API flow

- Axios configured globally in `src/core/axiosInterceptors.ts`
- Base URL from `src/config.ts` (`VITE_API_BASE`)
- JWT added on request, common error behavior on response
- CRUD-heavy operations in store actions and generic helpers (`src/store/crud.ts`)

## WebSocket flow

### A) Gameplay socket

- Managed in `src/store/modules/game.ts`
- Opens after world entry
- Receives high-frequency runtime events (`system.connect.success`, move/combat notifications, etc.)
- Sends command messages and connect/disconnect control

### B) Forge socket

- Managed in `src/store/modules/forge.ts`
- Handles platform jobs and pub/sub updates
- Used for world start/stop/kill, maintenance, nexus operations, staff panel updates

## Persistent vs session vs UI-only

- **Persistent (server-backed):** worlds, zones, rooms, templates, quests, users, reviews
- **Client persistent:** auth token + user in localStorage (`auth` module)
- **Session runtime:** active game state in `game` module
- **UI-only:** modal visibility, notifications, temporary form/list state

## Example: entering a world

1. Player clicks enter in lobby
2. Store dispatches entry flow (`game/request_enter_world`)
3. Forge job requested (`forge/send` job `enter_world`)
4. Forge returns job result with `ws_uri`
5. Game module opens WebSocket and sends `system.connect`
6. Runtime events populate player/room/map/messages
7. Router moves user to `/game`

## What to pay attention to

- Game module is state-dense and event-heavy: likely highest complexity zone.
- Builder has deep CRUD graph and route/state coupling.
- Two WebSocket channels increase power but add operational complexity.

## Related pages

- [02-major-domains.md](./02-major-domains.md)
- [06-builder-architecture.md](./06-builder-architecture.md)
- [07-game-runtime.md](./07-game-runtime.md)
- [09-dependency-graph.md](./09-dependency-graph.md)
