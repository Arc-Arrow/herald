# 04) Routing and App Shape

## In simple terms

Routes are the app’s floor plan. They clearly show product segmentation.

Primary router: `src/router/index.ts`.

## Major route groups

- `/`, `/home`, `/about`, `/terms`, `/privacy`, `/conduct` -> public site
- `/login`, `/signup`, `/forgot-password`, etc. -> auth
- `/lobby`, `/lobby/:section`, `/worlds/:world_id/:slug?` -> discovery/lobby
- `/game` -> live runtime
- `/build/worlds/:world_id/...` -> builder/editor (nested)
- `/staff/...` -> staff tools (nested)
- `/cryptic` -> authenticated special feature/puzzle

## What route groups tell us

- Product is intentionally multi-surface, not “just a game screen”.
- Builder and staff are first-class surfaces, not hidden admin pages.
- Nested builder routes mirror content hierarchy (world -> zone -> room -> entities).

## Access model in routes

- `ifAuthenticated` guard protects lobby/game/builder/cryptic
- `ifStaff` guard protects staff section and enforces privileged access

## Readable route map summary

- **Public:** marketing + legal + brand
- **Auth:** account lifecycle
- **Lobby:** world selection and character launch
- **Game:** single entry point to a stateful live session
- **Builder:** broad CRUD/editing tree by world context
- **Staff:** operations, review, and user oversight

## Biggest product surfaces by route volume

1. Builder (`/build/worlds/:world_id/...`) – largest route tree
2. Staff (`/staff/...`) – ops-heavy but smaller than builder
3. Lobby + Game – primary player loop

## Related pages

- [01-system-overview.md](./01-system-overview.md)
- [02-major-domains.md](./02-major-domains.md)
- [03-user-experiences.md](./03-user-experiences.md)
- [06-builder-architecture.md](./06-builder-architecture.md)
