#!/bin/bash

echo "🚀 Starting SmartCalculatorPro..."

echo "📥 Pulling latest changes from GitHub..."
git pull origin main

echo "🔧 Building the project..."
mvn clean install

echo "▶ Running Application..."
JAR_FILE=$(ls target/*.jar | head -n 1)
java -jar "$JAR_FILE"
