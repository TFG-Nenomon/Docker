#!/bin/bash
set -e

psql -U postgres -d postgres < /backup/backup.sql
