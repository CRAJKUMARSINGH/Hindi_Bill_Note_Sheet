#!/bin/bash
set -e
cp package.netlify.json package.json
npm install
npm run build:netlify
