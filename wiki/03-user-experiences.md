# 03) User Experiences

## In simple terms

Different user types effectively use different apps inside the same app.

## Public visitor

- **Touches:** Home/About/Terms/Privacy routes
- **Goal:** understand product, trust it, start quickly
- **Likely flow:** land on home -> click Play or Sign Up -> auth/lobby
- **Key files:** `src/views/Home.vue`, `src/views/About.vue`

## Logged-in player

- **Touches:** Lobby, world detail, game client
- **Goal:** choose character/world, then play session
- **Likely flow:** login -> `/lobby` -> select character -> game connect -> live commands
- **Key files:** `src/views/lobby/*`, `src/views/Game.vue`, `src/store/modules/game.ts`

## World builder / creator

- **Touches:** `/build/worlds/:world_id/*`
- **Goal:** author world content and tune game behavior
- **Likely flow:** lobby -> builder world map -> zone/room/template edits -> save/review/admin
- **Key files:** `src/components/builder/BuilderFrame.vue`, `src/views/builder/**/*`

## Staff/admin

- **Touches:** `/staff/*` plus builder admin instance routes
- **Goal:** operate live platform, moderate, review submissions
- **Likely flow:** staff panel -> reviews/worlds/users/nexus -> run forge jobs (initialize, maintenance, nexus actions)
- **Key files:** `src/views/staff/*`, `src/store/modules/staff/*`, `src/store/modules/forge.ts`

## What to pay attention to

- Player and builder flows share data concepts, but have very different UX and risk.
- Staff tools are not just reporting; they include active controls over runtime state.

## Related pages

- [04-routing-and-app-shape.md](./04-routing-and-app-shape.md)
- [06-builder-architecture.md](./06-builder-architecture.md)
- [07-game-runtime.md](./07-game-runtime.md)
- [08-admin-and-ops.md](./08-admin-and-ops.md)
