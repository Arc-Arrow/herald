# 02) Major Domains

## In simple terms

The app is split into a few big “teams” of responsibility. Each team has its own routes, store state, and components.

## 1) Authentication

- **What it is:** login/signup/password/email confirmation and user session
- **Where:** `src/views/auth/*`, `src/store/modules/auth.ts`
- **Connects to:** routing guards, all protected areas, API auth headers
- **Why this exists:** everything else depends on identity and permissions
- **If changed:** builder/staff access and game entry can break

## 2) Lobby / Discovery

- **What it is:** world discovery, featured lists, character launching
- **Where:** `src/views/lobby/*`, `src/components/lobby/*`, `src/store/modules/lobby.ts`
- **Connects to:** auth, game entry flow, builder entry
- **Why this exists:** transition layer between marketing and gameplay

## 3) Game Runtime

- **What it is:** live play session, command input, combat/map/message UI
- **Where:** `src/views/Game.vue`, `src/components/game/*`, `src/store/modules/game.ts`
- **Connects to:** auth token, WebSocket runtime, lobby entry
- **Why this exists:** core player value delivery

## 4) Builder / Editor

- **What it is:** world authoring and content management
- **Where:** `src/views/builder/*`, `src/components/builder/*`, `src/store/modules/builder/*`
- **Connects to:** world data model, CRUD APIs, forge jobs, staff reviews
- **Why this exists:** creator-side production engine for game content

## 5) Staff / Operations

- **What it is:** operational panel, reviews, activity, nexus/world controls
- **Where:** `src/views/staff/*`, `src/components/staff/*`, `src/store/modules/staff/*`
- **Connects to:** privileged auth, forge pub/sub + job channel, builder state
- **Why this exists:** live-service governance and safety

## 6) Shared UI + Forms + Lists

- **What it is:** reusable map, modal, form, table/list building blocks
- **Where:** `src/components/ui/*`, `src/components/forms/*`, `src/components/elementlist/*`
- **Connects to:** all surfaces
- **Why this exists:** consistent UX and faster delivery

## 7) Routing

- **What it is:** top-level app segmentation and access rules
- **Where:** `src/router/index.ts`
- **Connects to:** auth/store and every user journey

## 8) State / Store

- **What it is:** centralized client state and domain actions
- **Where:** `src/store/index.ts`, `src/store/modules/*`
- **Connects to:** nearly everything

## 9) API communication

- **What it is:** REST integration and global request/response behavior
- **Where:** `src/core/axiosInterceptors.ts`, many `axios.*` calls in store/views
- **Connects to:** auth token, all non-realtime persistence

## 10) WebSocket communication

- **What it is:**
  - game runtime socket: `src/store/modules/game.ts`
  - forge ops socket: `src/store/modules/forge.ts`
- **Why this exists:** low-latency gameplay + operational pub/sub/jobs

## Related pages

- [04-routing-and-app-shape.md](./04-routing-and-app-shape.md)
- [05-state-and-data-flow.md](./05-state-and-data-flow.md)
- [06-builder-architecture.md](./06-builder-architecture.md)
- [08-admin-and-ops.md](./08-admin-and-ops.md)
