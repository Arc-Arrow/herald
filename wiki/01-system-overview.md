# 01) System Overview

## In simple terms

You are looking at a **Vue single-page app** that supports an entire text-adventure game platform:

- player acquisition (public site)
- player onboarding and world discovery (lobby)
- real-time gameplay (game client)
- no-code-ish content creation (builder)
- live operations and moderation (staff)

Think of it as one building with different floors: lobby floor, game floor, builder floor, staff control room.

## What this system appears to be

Based on route/state structure, this frontend appears to be the main client for **Written Realms**:

- a multi-world text RPG platform
- worlds are authored by creators/builders
- players enter worlds as characters
- staff operate live infrastructure and reviews

## Major app surfaces

- **Public site:** marketing + trust pages + try-now entry
- **Auth:** login/signup/reset/confirm
- **Lobby:** world browsing, featured/staff picks, character entry
- **Game:** real-time command-driven runtime over WebSocket
- **Builder:** world/zone/room + templates + quests + admin instance controls
- **Staff:** support + moderation + operations + review workflows

## Likely product model

- The product monetizes/retains via user-created worlds and player communities.
- Builder and runtime are tightly coupled: authored content feeds the live game.
- Staff tools indicate active live-service operation (maintenance mode, nexus control, reviews).

## Likely architectural style

- **Client:** Vue 3 + Vue Router + Vuex
- **Data:** REST via Axios for CRUD and admin workflows
- **Realtime:** WebSocket for gameplay messages and operational jobs/events
- **Structure:** route-segmented experience with shared store modules

## Most important mental model

Use this model:

1. **Routes define product surfaces** ([04-routing-and-app-shape.md](./04-routing-and-app-shape.md))
2. **Vuex modules define business domains** ([02-major-domains.md](./02-major-domains.md))
3. **REST loads/saves state; WebSockets drive live behavior** ([05-state-and-data-flow.md](./05-state-and-data-flow.md))
4. **Builder entities feed runtime entities** ([06-builder-architecture.md](./06-builder-architecture.md), [07-game-runtime.md](./07-game-runtime.md))

## What to pay attention to

- The dual real-time channels (game socket vs forge socket)
- Builder depth (world/zone/room plus many template systems)
- Staff controls touching infrastructure-like operations

## Related pages

- [02-major-domains.md](./02-major-domains.md)
- [04-routing-and-app-shape.md](./04-routing-and-app-shape.md)
- [05-state-and-data-flow.md](./05-state-and-data-flow.md)
- [15-executive-summary.md](./15-executive-summary.md)
