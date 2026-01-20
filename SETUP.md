---
created: 2026-01-20T09:39:12-06:00
modified: 2026-01-20T09:39:12-06:00
---
# Digital Garden Setup Documentation

Personal reference for the setup and configuration of the Digital Garden repository.

---

## Repository Overview

The Digital Garden is a **nested Git repository** inside the larger DRD_Vault Obsidian vault. While DRD_Vault is a personal vault (not version-controlled), the Digital Garden subfolder is a public GitHub repository shared with students.

- **Public repo:** https://github.com/danielrdehaan/digital-garden
- **Purpose:** Shared knowledge base for students containing tutorials, one-sheets, and learning resources

---

## File Storage Strategy

This repo uses a **hybrid approach** to manage large files:

| Storage | Use For | Examples |
|---------|---------|----------|
| **Git LFS** | Small inline media (<50 MB) | Tutorial GIFs, short audio clips, small screenshots |
| **Dropbox** | Large downloadable files | Unity projects, sample packs, Kontakt builds |

### Why Hybrid?
- GitHub LFS has a 10 GB quota (storage + bandwidth)
- Large project ZIPs don't benefit from Git versioning—students download once
- Dropbox has no bandwidth limits and files are easy to update

### Dropbox Link Format
When linking to Dropbox files in notes, use direct download links:
```
[Download Project Files](https://www.dropbox.com/...?dl=1)
```
> Append `?dl=1` to force direct download instead of preview page

---

## Git LFS Configuration

Small media files are tracked with Git LFS.

### Tracked File Types
```
*.zip
*.mov
*.mp4
*.wav
*.gif
```

### Current Usage
- **GitHub Education quota:** 10 GB storage / 10 GB bandwidth per month
- **Target:** Keep LFS under 1 GB (small inline media only)

> Monitor usage at: GitHub repo → Settings → Archives → Git LFS

---

## Configuration Files

| File | Purpose |
|------|---------|
| `.gitignore` | Excludes .DS_Store, Reaper backups (*.rpp-bak), Obsidian workspace files |
| `.gitattributes` | Git LFS tracking rules for large media files |
| `README.md` | Student-facing onboarding guide (GitHub Desktop workflow) |
| `Students/_template/` | Template folder structure for student contributions (currently unused) |

---

## Student Access

### Adding Collaborators
1. Go to repo → Settings → Collaborators
2. Add student by GitHub username
3. Student accepts invitation via email

### Permissions
- Students have direct push access to Main branch
- No pull request workflow (simplified for accessibility)
- Students follow GitHub Desktop workflow documented in README.md

---

## Maintenance Notes

### Before Making Changes
Always pull/fetch before editing to avoid merge conflicts:
```bash
git pull origin main
```

### Adding New LFS File Types
If adding a new large file type:
```bash
git lfs track "*.newextension"
git add .gitattributes
git commit -m "Track .newextension files with LFS"
```

### Migrating Files to Dropbox
When moving a large file from LFS to Dropbox:
1. Upload file to Dropbox and get share link
2. Update the markdown note to use Dropbox link instead of local embed
3. Remove the file from the repo:
   ```bash
   git rm "path/to/file.zip"
   git commit -m "Move file.zip to Dropbox"
   ```
4. After all migrations, prune LFS:
   ```bash
   git lfs prune
   ```

### Quota Monitoring
- Check LFS usage periodically in GitHub repo settings
- Target: Keep under 1 GB for comfortable headroom

### Useful Commands
```bash
# Check LFS status
git lfs status

# List all LFS files
git lfs ls-files

# Check LFS storage usage
git lfs env
```

---

## Folder Structure

```
Digital Garden/
├── Knowledge Database/    # Main content area
│   ├── DAW-Tools/
│   ├── Game-Audio/
│   ├── Synthesis-Sound-Design/
│   ├── Audio-Engineering/
│   ├── Sampling-Instruments/
│   ├── MIDI-Sequencing/
│   ├── Course-Materials/
│   ├── Learning-Productivity/
│   └── Attachments/       # Media files
├── Students/              # Student contribution folders
│   └── _template/
├── .gitignore
├── .gitattributes
├── README.md              # Student onboarding
└── SETUP.md               # This file
```
