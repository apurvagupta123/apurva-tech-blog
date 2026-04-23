#!/bin/bash

# Color codes for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${BLUE}=====================================${NC}"
echo -e "${BLUE}Apurva's Tech Blog - GitHub Setup${NC}"
echo -e "${BLUE}=====================================${NC}\n"

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo -e "${RED}❌ Git is not installed. Please install Git first.${NC}"
    exit 1
fi

echo -e "${YELLOW}Step 1: Initialize Git Repository${NC}"
git init
echo -e "${GREEN}✅ Git repository initialized\n${NC}"

echo -e "${YELLOW}Step 2: Add all files${NC}"
git add .
echo -e "${GREEN}✅ All files added\n${NC}"

echo -e "${YELLOW}Step 3: Create initial commit${NC}"
git commit -m "Initial commit: Setup Apurva's Tech Blog with Hugo"
echo -e "${GREEN}✅ Initial commit created\n${NC}"

echo -e "${BLUE}=====================================${NC}"
echo -e "${BLUE}Next Steps:${NC}"
echo -e "${BLUE}=====================================${NC}\n"

echo -e "${YELLOW}1. Create repository on GitHub:${NC}"
echo "   - Go to https://github.com/new"
echo "   - Repository name: apurva-tech-blog"
echo "   - Description: Apurva's Tech Blog - Tech & AI Insights"
echo "   - Select: Public"
echo "   - Click: Create repository\n"

echo -e "${YELLOW}2. Connect to GitHub (run these commands):${NC}"
echo -e "   ${BLUE}git remote add origin https://github.com/apurvagupta123/apurva-tech-blog.git${NC}"
echo -e "   ${BLUE}git branch -M main${NC}"
echo -e "   ${BLUE}git push -u origin main${NC}\n"

echo -e "${YELLOW}3. Add GitHub Secrets for Cloudflare:${NC}"
echo "   - Go to: https://github.com/apurvagupta123/apurva-tech-blog/settings/secrets/actions"
echo "   - Add CLOUDFLARE_API_TOKEN (from Cloudflare dashboard)"
echo "   - Add CLOUDFLARE_ACCOUNT_ID (your Cloudflare account ID)\n"

echo -e "${YELLOW}4. Connect to Cloudflare Pages:${NC}"
echo "   - Go to https://dash.cloudflare.com"
echo "   - Pages → Create a project → Connect to Git"
echo "   - Select: apurva-tech-blog"
echo "   - Build command: hugo"
echo "   - Build output: public"
echo "   - Add environment: HUGO_VERSION = 0.121.0"
echo "   - Save and deploy\n"

echo -e "${GREEN}✅ All done! Your blog is ready to push to GitHub.${NC}"
