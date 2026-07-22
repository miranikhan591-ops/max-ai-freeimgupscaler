# Max AI - Image Upscaler & Super Resolution

A powerful, AI-driven image upscaling tool built with React and Tailwind CSS. Enhance your images up to 8x resolution with advanced filters and real-time comparison.

## 🚀 Features

- **AI Super Resolution**: Intelligent upscaling up to 8x resolution
- **Real-time Comparison**: Slider, side-by-side, and toggle view modes
- **Adjustable Settings**: Control detail recovery, noise reduction, sharpness, and more
- **Face Restoration**: Smart enhancement for facial features
- **Multiple Formats**: Export as PNG, JPEG, or WebP
- **Dark/Light Theme**: Seamless theme switching with persistence
- **Sample Images**: Pre-loaded sample images for testing
- **Responsive Design**: Works perfectly on desktop and mobile devices

## 📋 Tech Stack

- **React 18** - UI framework (via CDN)
- **Tailwind CSS** - Styling (via CDN)
- **Babel** - JSX compilation (via CDN)
- **Canvas API** - Image processing
- **LocalStorage** - Theme persistence

## 🛠️ Installation & Setup

### Local Development

```bash
# Install dependencies
npm install

# Start development server
npm run dev

# Open in browser
# Navigate to http://localhost:3000
```

### Production Build

```bash
npm run build
npm start
```

## 🌐 Deployment

### Deploy to Vercel

1. **Push to GitHub**:
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin https://github.com/YOUR_USERNAME/max-ai-upscaler.git
   git push -u origin main
   ```

2. **Deploy to Vercel**:
   - Go to [vercel.com](https://vercel.com)
   - Click "New Project"
   - Select your GitHub repository
   - Click "Deploy"
   - Your site will be live at `https://your-project.vercel.app`

### Deploy to GitHub Pages

1. **Create GitHub Repository**:
   - Go to [github.com/new](https://github.com/new)
   - Create a public repository named `max-ai-upscaler`

2. **Push Your Code**:
   ```bash
   git add .
   git commit -m "Initial commit"
   git push origin main
   ```

3. **Enable GitHub Pages**:
   - Go to Settings → Pages
   - Select "main" branch as source
   - Your site will be available at `https://YOUR_USERNAME.github.io/max-ai-upscaler`

## 🎨 Customization

### Modify Colors
Edit the CSS variables in `index.html`:
```css
:root,
html.dark {
  --bg-surface: #030712;
  --text-primary: #f9fafb;
  /* ... more variables ... */
}
```

### Update Branding
- Change the logo in the Header component
- Modify the title and descriptions
- Update the favicon

### Change Sample Images
Edit the `SAMPLES` array in the React script:
```javascript
const SAMPLES = [
  {
    id: 'sample-portrait',
    title: 'Your Title',
    url: 'https://your-image-url.jpg',
  },
  // ... more samples
];
```

## 📦 File Structure

```
max-ai-upscaler/
├── index.html          # Main application file
├── package.json        # Dependencies and scripts
├── vercel.json         # Vercel deployment config
├── .gitignore          # Git ignore rules
└── README.md           # This file
```

## 🔧 Troubleshooting

### 404 Errors on Refresh
- ✅ Fixed with `vercel.json` rewrites configuration
- All routes redirect to `index.html` for SPA routing

### Images Not Loading
- Ensure image URLs are CORS-enabled
- Test URLs in `SAMPLES` array are accessible
- Use HTTPS URLs when deployed

### Slow Performance
- Images are optimized with canvas
- Consider enabling caching headers (included in vercel.json)
- Use smaller sample images for faster testing

## 📝 License

MIT License - Feel free to use this project for personal and commercial purposes.

## 🤝 Contributing

Feel free to fork, modify, and deploy your own version!

---

**Made with ❤️ by Your Name**
