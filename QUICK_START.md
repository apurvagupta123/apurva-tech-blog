# 🚀 Quick Start Guide

Your complete Hugo blog project is ready! Follow these simple steps:

## Step 1️⃣: Create GitHub Repository (2 minutes)

1. Go to https://github.com/new
2. **Repository name**: `apurva-tech-blog`
3. **Description**: `Apurva's Tech Blog - Tech & AI Insights`
4. Select **Public**
5. Click **Create repository**

## Step 2️⃣: Push Your Blog to GitHub (3 minutes)

Open Terminal and run these commands:

```bash
# Navigate to your blog folder
cd /path/to/apurva-tech-blog

# Initialize Git
git init

# Add all files
git add .

# Create first commit
git commit -m "Initial commit: Setup Apurva's Tech Blog with Hugo"

# Add remote (REPLACE with your repo URL)
git remote add origin https://github.com/apurvagupta123/apurva-tech-blog.git

# Push to GitHub
git branch -M main
git push -u origin main
```

**That's it!** Your code is now on GitHub.

## Step 3️⃣: Add GitHub Secrets (2 minutes)

You need to add two secrets for Cloudflare to deploy automatically:

1. Go to: https://github.com/apurvagupta123/apurva-tech-blog/settings/secrets/actions
2. Click **New repository secret**
3. Add secret #1:
   - **Name**: `CLOUDFLARE_API_TOKEN`
   - **Value**: Get from https://dash.cloudflare.com/profile/api-tokens (Create Token → Edit Cloudflare Workers)
4. Click **Add secret**
5. Repeat for secret #2:
   - **Name**: `CLOUDFLARE_ACCOUNT_ID`
   - **Value**: Get from https://dash.cloudflare.com (copy from the URL or About section)

## Step 4️⃣: Connect Cloudflare Pages (3 minutes)

1. Go to https://dash.cloudflare.com
2. Click **Pages** in left sidebar
3. Click **Create a project**
4. Click **Connect to Git**
5. Authorize GitHub (first time only)
6. Select repository: **apurva-tech-blog**
7. Click **Begin setup**

**Build Settings:**
- Framework: **Hugo**
- Build command: **hugo**
- Build output: **public**

**Environment Variables:**
- Key: `HUGO_VERSION`
- Value: `0.121.0`

8. Click **Save and Deploy**
9. Wait 2-3 minutes for build

## Step 5️⃣: Connect Custom Domain (2 minutes)

1. In Cloudflare Pages dashboard, click **Custom domains**
2. Click **Set up a custom domain**
3. Enter: **theapurva.com**
4. Click **Continue**
5. Verify DNS (should be automatic)
6. Wait 2-5 minutes

✅ **Your blog is now LIVE at https://theapurva.com!**

## 📝 Creating New Posts

To add a blog post:

1. Go to your GitHub repository
2. Click **Add file** → **Create new file**
3. Name it: `content/posts/my-post-title.md`
4. Copy this template:

```markdown
---
title: "Your Post Title"
date: 2026-04-23
draft: false
tags: ["tag1", "tag2"]
categories: ["Category"]
description: "Brief description"
---

# Your Post Title

Your content here...
```

5. Click **Commit new file**
6. GitHub automatically builds and deploys! (Check in 1-2 minutes)

---

**That's it! You now have a professional tech blog running on theapurva.com! 🎉**

Need help? Refer to:
- Hugo Docs: https://gohugo.io/documentation/
- Cloudflare Pages: https://developers.cloudflare.com/pages/
