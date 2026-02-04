SET search_path TO public;

BEGIN;

CREATE TABLE chat_messages (
    id UUID PRIMARY KEY,
    sender_id UUID NOT NULL,
    receiver_id UUID,
    channel VARCHAR(100) NOT NULL,
    message TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_chat_channel ON chat_messages(channel);
CREATE INDEX idx_chat_sender ON chat_messages(sender_id);

COMMIT;