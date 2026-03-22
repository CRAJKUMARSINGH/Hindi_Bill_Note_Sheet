#!/bin/bash
set -e

cd artifacts/hindi-bill

cp package.netlify.json package.json

npm install

npx vite build --config vite.config.netlify.ts
