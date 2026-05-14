# Apurva's Tech Blog:

A modern, fast, and beautiful blog powered by Hugo and hosted on Cloudflare Pages.

## 📚 About

This blog is dedicated to sharing insights on technology, artificial intelligence, and innovation. Built with Hugo and the PaperMod theme for optimal performance and readability.

## 🚀 Getting Started

### Local Development

```bash
# Install Hugo (if not already installed)
# macOS: brew install hugo
# Ubuntu/Debian: sudo apt-get install hugo
# Windows: choco install hugo

# Clone this repository
git clone https://github.com/apurvagupta123/apurva-tech-blog.git
cd apurva-tech-blog

# Initialize submodules for the theme
git submodule update --init --recursive

# Start the development server
hugo server

# Visit http://localhost:1313
```

### Creating a New Post

```bash
hugo new content/posts/your-post-title.md
```

Then edit the markdown file and set `draft: false` when ready to publish.

## 📝 Blog Post Format

```markdown
---
title: "Your Post Title"
date: 2026-04-23
draft: false
tags: ["tag1", "tag2"]
categories: ["Category"]
description: "Brief description of your post"
---

# Your Post Title

Your content goes here...
```

## 🌐 Deployment

This blog is automatically deployed to Cloudflare Pages whenever you push to the main branch.

### Setup Cloudflare Pages

1. Go to https://dash.cloudflare.com
2. Navigate to Pages → Create a project
3. Connect to Git and select this repository
4. Build settings:
   - Framework: Hugo
   - Build command: `hugo`
   - Build output: `public`
5. Add environment variable: `HUGO_VERSION: 0.121.0`
6. Add custom domain: `theapurva.com`

## 🎨 Theme

This blog uses the [PaperMod](https://github.com/adityatelange/hugo-PaperMod) theme - a fast, minimal, and clean theme for Hugo.

## 📂 Directory Structure

```
apurva-tech-blog/
├── content/
│   └── posts/        # Blog posts
├── themes/
│   └── PaperMod/     # Hugo theme
├── static/           # Static files (images, etc.)
├── .github/
│   └── workflows/    # GitHub Actions
├── config.toml       # Hugo configuration
└── README.md         # This file
```

## 🔧 Configuration

Edit `config.toml` to customize:
- Blog title and description
- Author information
- Navigation menu
- Theme settings

## 📧 Contact

Reach out on GitHub or through the blog!

---

**Happy blogging! 🚀**
