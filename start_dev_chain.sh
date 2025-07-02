#!/bin/bash

# Development Chain Starter Script
# Usage: ./start_dev_chain.sh "zeplin_url" "project_title" "description" "technologies" "github_repo"

if [ $# -ne 5 ]; then
    echo "Usage: $0 \"<zeplin_url>\" \"<project_title>\" \"<description>\" \"<technologies>\" \"<github_repo>\""
    echo ""
    echo "Example:"
    echo "$0 \"https://app.zeplin.io/project/xyz\" \"My App\" \"Description here\" \"React,Node.js\" \"https://github.com/user/repo\""
    exit 1
fi

ZEPLIN_LINK="$1"
PROJECT_TITLE="$2"
PROJECT_DESCRIPTION="$3"
TECHNOLOGIES="$4"
GITHUB_REPO="$5"

echo "🚀 Starting Development Chain..."
echo "Project: $PROJECT_TITLE"
echo "Technologies: $TECHNOLOGIES"
echo "Repository: $GITHUB_REPO"
echo "Designs: $ZEPLIN_LINK"
echo ""

# Generate the command
COMMAND="@NorseAIDevTeam startDevelopmentChain zeplinLink: \"$ZEPLIN_LINK\" projectTitle: \"$PROJECT_TITLE\" projectDescription: \"$PROJECT_DESCRIPTION\" technologies: \"$TECHNOLOGIES\" githubRepo: \"$GITHUB_REPO\""

echo "Generated Command:"
echo "$COMMAND"
echo ""
echo "Copy and paste this command to start the development chain!"
echo ""

# Optionally save to file for reference
echo "$COMMAND" > last_dev_command.txt
echo "📝 Command saved to last_dev_command.txt" 