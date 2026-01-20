---
created: 2026-01-19T16:32:45-06:00
modified: 2026-01-19T16:32:45-06:00
---
# SP26-MUSC-601 Course Improvements Summary

---
date: 2026-01-19
course: SP26-MUSC-601
type: changelog
---

## Overview

This document summarizes the improvements made to the MUSC-601 Media Music Tech Lab (Year 2) course materials, based on analysis of the FA24 course structure.

---

## Phase 1: Critical Fixes

### 1. Populated 3 Empty Weekly Lessons

| Week | Topic | Content Added |
|------|-------|---------------|
| 7 | Testing & Optimization in FMOD | FMOD Profiler usage, memory optimization techniques, platform-specific builds, hands-on optimization workshop |
| 11 | Check Pro Tools Sessions | Session review checklist, technical setup verification, common issues workshop, individual session fixes |
| 14 | Advanced Topics in Non-Linear Music | Generative music concepts, implementation approaches, case studies (Spore, No Man's Sky, Minecraft, Journey), design exercise |

### 2. Added Learning Objectives to All 15 Weeks

Each week now includes 4-5 specific, measurable learning objectives using action verbs (navigate, create, understand, implement, etc.).

**Example - Week 1:**
> By the end of this session, students will be able to:
> - Navigate the Unity Editor interface (Scene view, Game view, Hierarchy, Inspector, Project window)
> - Create, position, and organize GameObjects in a scene
> - Understand the relationship between Assets, Scenes, and Projects
> - Import and organize assets in the Project window
> - Use basic transform tools (move, rotate, scale)

### 3. Defined 10 Assignments with Clear Deliverables

| Week | Assignment | Due Date | Key Requirements |
|------|------------|----------|------------------|
| 2 | Roll-A-Ball with Audio | Sept 17 | Complete tutorial + 3 audio elements + playable build |
| 5 | FMOD Survival Shooter Integration | Oct 8 | Full audio implementation + parameter-driven sound + 200-word writeup |
| 7 | FMOD Optimization Report | Oct 22 | Before/after profiler screenshots + 250-word summary |
| 8 | Revised Score for Recording | Oct 29 | Score + parts as PDF with title/instrumentation pages |
| 9 | Practice Mix Submission | Nov 5 | Stereo bounce + 150-word reflection + 3 peer feedback items |
| 10 | Recording-Ready Pro Tools Session | Nov 12 | Configured session + I/O screenshots + track layout |
| 11 | Pro Tools Session Checklist | Nov 19 | Session meeting all checklist criteria + screenshots |
| 12 | Comped and Edited Recording | Nov 26 | Comped recording + 300-word reflection |
| 14 | Non-Linear Music Design Document | Dec 10 | Design document + FMOD proof-of-concept + 500-word explanation |
| 15 | Final Portfolio Package | Dec 17 | Mixed/mastered audio + video capture + documentation + resume + 500-word reflection |

---

## Phase 2: Content Enrichment

### 4. Expanded All 15 Weekly Lessons

Each weekly lesson now follows a standardized template:

```markdown
## Learning Objectives
- [4-5 specific, measurable objectives]

## Pre-Class Preparation
- [What students should do before class]

## In-Class Activities
### Part 1: [Topic] (time)
### Part 2: [Topic] (time)
### Part 3: [Topic] (time)
### Part 4: [Topic] (time)

## Resources
- [Knowledge Database links]
- [External documentation]

## Assignment (where applicable)
- **Due:** [Date]
- **Deliverable:** [Description]
- **Requirements:** [Specific criteria]
- **Naming Convention:** FirstInitialLastName_Week##_AssignmentName_V#
```

**Content expansion metrics:**
- Weekly lessons grew from ~5 lines each to 70-108 lines each
- Total weekly lesson content: 75 lines → 1,291 lines

### 5. Added Knowledge Database Links

| Week | New Links Added |
|------|----------------|
| 1-2 | Unity Basics Working with Audio, The Basics of Sound Audio and Digital Audio |
| 3 | FMOD Studio One-Sheet, FMOD Unity Integration |
| 7 | FMOD Documentation - Profiling, FMOD Documentation - Memory Management |
| 9 | Mixing in Logic Parts 1-3 |
| 14 | Generative Music Systems, Bitwig Generative Music |

### 6. Standardized Frontmatter Across All Files

All course files now include YAML frontmatter:

```yaml
---
course: FA24-MUSC-601
week: X
title: "Topic"
location: In-Person | Online
status: pending
---
```

---

## Phase 3: Enhancements

### 7. Created Cohort Page

**File:** `Cohort.md`

Features:
- Photos of all 12 cohort members
- Student status and project affiliations
- Areas for growth (where documented)
- Collaboration opportunities section
- Contact information

**Students included:**
1. Christian Graham
2. Erv Jeffries
3. Heather Duff
4. Hugh Downs
5. Mikalah Jenifer
6. Nate Williams
7. Pengcheng Zhao
8. Sergio De Miguel Jorquera
9. Sparsh Verma
10. Tiffany Connell
11. Yuwan Zhang
12. Zoey Lim

### 8. Created Course Resources Index

**File:** `Course Resources.md`

Organized into sections:
- Unity & Game Audio
- FMOD
- Pro Tools & Recording
- Mixing & Mastering
- Audio Fundamentals
- Generative & Non-Linear Music
- Software & Sample Libraries
- Industry & Career Resources
- Reference Books

### 9. Updated Main Course Page (MOC)

Added:
- Quick Links section (Syllabus, Calendar, Cohort, Resources)
- Weekly lessons table with topics and locations
- Key deliverables table with assignments and due dates
- Professional organizations section (G.A.N.G., AES, GameSoundCon)

### 10. Added Participation Rubric to Syllabus

**Grade criteria table:**

| Grade | Criteria |
|-------|----------|
| A (95-100) | Consistently engaged; completes all assignments on time; helps peers; shows initiative |
| A- (92-94) | Regularly engaged; completes assignments on time; shows consistent effort |
| B+ (88-91) | Generally prepared; completes most assignments on time; participates when prompted |
| B (85-87) | Adequately prepared; occasional late assignments; participates minimally |
| B- (82-84) | Sometimes unprepared; multiple late assignments; rarely participates |
| Below B- | Frequently unprepared; missing assignments; disengaged |

**Extra effort examples:**
- Arriving early and being ready to work
- Asking thoughtful questions during class
- Helping classmates troubleshoot issues
- Going beyond minimum assignment requirements
- Seeking feedback and applying it to future work

---

## Files Modified

| File | Description | Change Type |
|------|-------------|-------------|
| `Week_01` through `Week_15` (all 15) | Weekly lesson files | Major expansion |
| `FA24-MUSC-601 Media Music Tech Lab (Y2).md` | Main course page (MOC) | Updated with new sections |
| `FA24-MUSC-601 Syllabus.md` | Course syllabus | Added participation rubric + frontmatter |
| `Cohort.md` | Student cohort page | **New file** |
| `Course Resources.md` | Resources index | **New file** |

---

## Verification Checklist

After implementation, verify:

- [x] All 15 weekly lessons have learning objectives
- [x] Empty weeks (7, 11, 14) are populated with content
- [x] Assignments have clear deliverables and naming conventions
- [x] MOC links to Cohort and Course Resources pages
- [x] Syllabus includes participation rubric
- [x] All files have standardized frontmatter
- [ ] Open in Obsidian and verify all `[[wikilinks]]` resolve
- [ ] Test navigation from MOC to all linked content

---

## Next Steps for SP26

When adapting these materials for Spring 2026:

1. **Update Dates:** Change all dates from Fall 2024 to Spring 2026 schedule
2. **Review Content:** Update any outdated software versions or resources
3. **Refresh Links:** Verify all external links still work
4. **Update Cohort:** Replace FA24 student photos with SP26 cohort
5. **Adjust Schedule:** Consider any changes to recording session timing or holidays

---

*Generated: January 19, 2026*
