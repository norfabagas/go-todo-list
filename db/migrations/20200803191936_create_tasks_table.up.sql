CREATE TABLE IF NOT EXISTS public.tasks (
    id BIGSERIAL PRIMARY KEY NOT NULL,
    public_id VARCHAR(255) UNIQUE NOT NULL,
    task VARCHAR(255) NOT NULL,
    detail TEXT,
    done_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);