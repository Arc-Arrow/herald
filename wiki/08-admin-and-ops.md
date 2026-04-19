# 08) Admin and Ops

## In simple terms

Staff tools are the live control room.

They do analytics-style visibility **and** active operational actions.

## What staff tools appear to cover

- Platform panel metrics (signups, active users, unreviewed worlds)
- Maintenance mode toggles
- Initialize/teardown jobs
- Nexus lifecycle actions (build/delete/rebuild)
- Broadcast messaging
- Playing/activity/user lookup
- World submission review workflow (claim/edit/approve/reject)

## Key files

- Routes/layout: `/staff/*`, `src/components/staff/StaffFrame.vue`
- Views: `src/views/staff/*`
- State: `src/store/modules/staff/*`
- Realtime ops channel: `src/store/modules/forge.ts`

## Why this exists

This is a live-service product. Staff needs levers for uptime, moderation, and content governance.

## What this tells us about operating the product

- Worlds likely run on managed runtime instances
- There is infrastructure around “nexus” and world process state
- Builder publication appears gated by reviews
- Operations rely on async jobs + pub/sub updates, not only REST polling

## Risks if changed

- Operational regressions can impact all users, not just one feature
- Staff trust depends on clear status and reliable controls
- Review pipeline failures can block creator ecosystem

## What is still unclear

- Exact nexus architecture and failure modes are backend-defined
- Full incident workflow is not fully visible from frontend alone

## Related pages

- [05-state-and-data-flow.md](./05-state-and-data-flow.md)
- [06-builder-architecture.md](./06-builder-architecture.md)
- [09-dependency-graph.md](./09-dependency-graph.md)
- [11-questions-and-unknowns.md](./11-questions-and-unknowns.md)
