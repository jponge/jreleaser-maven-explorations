#!/usr/bin/env bash
set -e

echo "🚀 Doing a build"
./mvnw --batch-mode --no-transfer-progress install -DskipTests

echo "🚀 Here we would stage artifacts to prepare them for deployment to Central"

echo "🚀 Release with JReleaser"
./mvnw --batch-mode --no-transfer-progress -Prelease -pl :jreleaser-maven-explorations jreleaser:full-release

echo "✅ Done"