create table if not exists public.tracker_state (
  id text primary key check (id = 'main'),
  data jsonb not null,
  updated_at timestamptz not null default now()
);

alter table public.tracker_state enable row level security;
revoke all on table public.tracker_state from anon, authenticated;
grant all on table public.tracker_state to service_role;