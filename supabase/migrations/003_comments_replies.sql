-- Add reply support to comments table
ALTER TABLE comments ADD COLUMN IF NOT EXISTS parent_id UUID REFERENCES comments(id) ON DELETE CASCADE;
ALTER TABLE comments ADD COLUMN IF NOT EXISTS reply_to_username TEXT;
CREATE INDEX IF NOT EXISTS idx_comments_parent ON comments(parent_id);
