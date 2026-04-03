-- Run this in your Supabase SQL editor to set up the database

create table if not exists talent (
  id text primary key,
  name text not null,
  role text,
  location text,
  availability text,
  bio text,
  strength text,
  portfolio text,
  linkedin text,
  email text,
  sources text[] default '{}',
  awards text[] default '{}',
  notable_clients text[] default '{}',
  notes text,
  shortlisted boolean default false,
  verified boolean default false,
  quality_score integer,
  quality_notes text,
  from_search text,
  from_monday_drop boolean default false,
  drop_date timestamptz,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

-- Enable Row Level Security
alter table talent enable row level security;

-- Allow all operations for now (you can restrict later)
create policy "Allow all" on talent for all using (true);

-- Index for fast search
create index if not exists talent_name_idx on talent using gin(to_tsvector('english', name));
create index if not exists talent_role_idx on talent(role);
create index if not exists talent_shortlisted_idx on talent(shortlisted);
create index if not exists talent_monday_drop_idx on talent(from_monday_drop);
