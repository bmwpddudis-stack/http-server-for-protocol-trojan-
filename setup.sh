#!/bin/bash
mkdir -p certs

echo "📜 Генерация сертификатов..."

openssl req -x509 -newkey rsa:2048 \
    -keyout certs/site1.local.key \
    -out certs/site1.local.crt \
    -days 365 -nodes \
    -subj "/CN=site1.local" 2>/dev/null

openssl req -x509 -newkey rsa:2048 \
    -keyout certs/site2.local.key \
    -out certs/site2.local.crt \
    -days 365 -nodes \
    -subj "/CN=site2.local" 2>/dev/null

echo "✅ Готово!"