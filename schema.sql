-- Reference schema for a future SQLite/native implementation.
CREATE TABLE IF NOT EXISTS activities (
  id TEXT PRIMARY KEY,
  activity_date TEXT NOT NULL,
  activity_name TEXT NOT NULL,
  category TEXT NOT NULL,
  app_name TEXT,
  duration_minutes INTEGER NOT NULL CHECK (duration_minutes > 0),
  started_at TEXT,
  is_focused INTEGER NOT NULL DEFAULT 0,
  source TEXT NOT NULL DEFAULT 'manual',
  notes TEXT,
  created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX IF NOT EXISTS idx_activities_date ON activities(activity_date);
CREATE TABLE IF NOT EXISTS preferences (
  key TEXT PRIMARY KEY,
  value TEXT NOT NULL,
  updated_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
);