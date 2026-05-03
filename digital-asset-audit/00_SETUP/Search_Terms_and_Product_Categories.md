# SEARCH TERMS & PRODUCT CATEGORIES GUIDE

---

## PART 1: WINDOWS SEARCH TERMS

Use these in Windows File Explorer search box or PowerShell:

### Extension-Based Searches
```
ext:.pdf
ext:.docx OR ext:.doc
ext:.txt
ext:.md
ext:.csv
ext:.xlsx OR ext:.xls
ext:.pptx OR ext:.ppt
ext:.html OR ext:.htm
ext:.css
ext:.js
ext:.json
ext:.xml
ext:.zip OR ext:.rar OR ext:.7z
```

### Keyword-Based Searches (Content Search)
```
course content:.pdf
guide content:.docx
prompt content:.txt
template content:.xlxs
checklist content:.pdf
workbook content:.docx
funnel content:.pptx
landing content:.html
sales page content:.docx
ebook content:.pdf
module content:.pptx
training content:.mp4
```

### Specific Topic Searches
```
TikTok content:.
AI content:.
affiliate content:.
digital product content:.
Bermuda content:.
Ghana marketing content:.
Kenya business content:.
Zimbabwe content:.
South Africa content:.
travel guide content:.
business plan content:.
marketing strategy content:.
automation content:.
app idea content:.
SaaS content:.
```

### Combined Searches (PowerShell)
```powershell
# Find PDFs about business
Get-ChildItem -Recurse -Filter "*.pdf" | Where-Object { $_.Name -match "business|marketing|course" }

# Find large files (potential video courses)
Get-ChildItem -Recurse | Where-Object { $_.Length -gt 100MB }

# Find recently modified content
Get-ChildItem -Recurse | Where-Object { $_.LastWriteTime -gt (Get-Date).AddDays(-90) }
```

---

## PART 2: TOP 10 PRODUCT CATEGORIES I EXPECT TO FIND

Based on your drives and brand (AI Profit Hustlers / Bermuda Locals / Dollar Double Empire), here are the categories most likely to contain gold:

### CATEGORY 1: AI & Automation Content
**What to look for:**
- ChatGPT prompt collections
- Claude conversation exports
- AI workflow automations
- No-code tool setups
- Midjourney/Stable Diffusion prompts

**Quick Wins:**
- AI Prompt Pack ($9-$27)
- AI Automation Templates ($47-$97)
- ChatGPT Course ($97-$197)

---

### CATEGORY 2: TikTok & Social Media
**What to look for:**
- Script documents
- Content calendars
- Hashtag research
- Hook templates
- Video outlines

**Quick Wins:**
- TikTok Script Pack ($27-$47)
- 30-Day Content Calendar ($9-$19)
- Viral Hook Templates ($17-$37)

---

### CATEGORY 3: Africa-Focused Business Content
**What to look for:**
- Ghana market research
- Kenya business guides
- Zimbabwe opportunities
- South Africa regulations
- Niche market analysis

**Quick Wins:**
- Africa Business Starter Kit ($47-$97)
- Country-Specific Guide ($27-$67)
- Remote Work Africa ($37-$77)

---

### CATEGORY 4: Affiliate & Digital Marketing
**What to look for:**
- Funnel diagrams
- Email sequences
- Landing page copy
- Affiliate strategies
- Commission structures

**Quick Wins:**
- Affiliate Marketing Blueprint ($47-$97)
- Email Sequence Pack ($27-$57)
- Funnel Template Kit ($37-$77)

---

### CATEGORY 5: Travel & Expat Content
**What to look for:**
- Bermuda guides
- Travel itineraries
- Relocation checklists
- Cost of living research
- Visa information

**Quick Wins:**
- Bermuda Relocation Guide ($27-$67)
- Travel Hacking Playbook ($37-$77)
- Digital Nomad Visa Guide ($47-$97)

---

### CATEGORY 6: Software/App Ideas
**What to look for:**
- App wireframes
- Feature lists
- User flow diagrams
- Code snippets
- API documentation

**Quick Wins:**
- MVP Spec Template ($17-$37)
- App Idea Database ($9-$27)
- No-Code App Blueprints ($47-$97)

**App Opportunities:**
- Exam simulator (education)
- Quote generator (business)
- Content calendar tool (marketing)
- Niche calculator (finance/travel)

---

### CATEGORY 7: Business Planning & Finance
**What to look for:**
- Business plan templates
- Financial models
- Pitch decks
- Revenue projections
- Investment memos

**Quick Wins:**
- Business Plan Template Pack ($27-$67)
- Financial Model for Startups ($47-$97)
- Pitch Deck Template ($37-$77)

---

### CATEGORY 8: Educational Courses & Training
**What to look for:**
- Course outlines
- Slide decks
- Workbooks
- Quiz questions
- Certificate templates

**Quick Wins:**
- Mini-Course ($47-$97)
- Workshop-in-a-Box ($97-$197)
- Certification Program ($197-$497)

---

### CATEGORY 9: Templates & Tools
**What to look for:**
- Spreadsheet templates
- Document templates
- Checklists
- Trackers
- Calculators

**Quick Wins:**
- Canva Template Pack ($9-$27)
- Excel Template Bundle ($27-$57)
- Notion Template ($17-$47)

---

### CATEGORY 10: Niche Specialties
**What to look for:**
- Industry-specific guides
- Technical documentation
- Compliance checklists
- Regulation summaries
- Professional development

**Quick Wins:**
- Compliance Checklist ($27-$67)
- Professional Toolkit ($47-$97)
- Niche Masterclass ($197-$497)

---

## PART 3: PRICING PYRAMID

### Free Tier (Lead Magnets)
- 5-page PDF
- Single checklist
- Resource list
- **Purpose:** Build email list

### Entry Level ($9-$27)
- Comprehensive guide (20-50 pages)
- Template pack (5-10 items)
- Script pack (20-30 scripts)
- **Purpose:** First sale, low friction

### Mid Tier ($47-$97)
- Complete course (3-5 modules)
- Toolkit (templates + training)
- Workshop recordings
- **Purpose:** Main revenue driver

### Premium ($197-$497)
- Comprehensive program (10+ modules)
- 1-on-1 or group coaching element
- Ongoing support/community
- **Purpose:** High-ticket revenue

### Subscription ($9-$99/month)
- Ongoing content delivery
- Community access
- Monthly templates/tools
- **Purpose:** Recurring revenue

---

## PART 4: CONTENT-TO-PRODUCT MATRIX

| Found Content | Turn Into | Price | Difficulty |
|--------------|-----------|-------|------------|
| Old blog posts | Ebook | $9-$27 | Easy |
| Email sequences | Email Course | $47-$97 | Medium |
| Spreadsheets | Template Pack | $17-$47 | Easy |
| Video scripts | TikTok Pack | $27-$67 | Easy |
| Course notes | Full Course | $197-$497 | Hard |
| App wireframes | No-Code App | $9-$49/mo | Medium |
| Prompt collection | AI Tool Pack | $9-$27 | Easy |
| Business plans | Template Bundle | $47-$97 | Easy |
| Travel research | Guide Book | $27-$67 | Easy |
| Checklists | Productivity System | $37-$77 | Medium |

---

## PART 5: FAST-TRACK DECISION TREE

```
Found a file? Ask:
│
├─ Is it educational? → Course or Guide → $47-$197
│
├─ Is it a template? → Template Pack → $9-$47
│
├─ Is it a tool/script? → App or Automation → $9-$49/mo
│
├─ Is it location-specific? → Travel/Niche Guide → $27-$97
│
├─ Is it a collection? → Bundle or Toolkit → $47-$147
│
└─ Is it unique knowledge? → Premium Course → $197-$497
```

---

## PART 6: RED FLAGS - CONTENT TO SKIP

Even if valuable, DON'T productize:

| Type | Reason |
|------|--------|
| Outdated tech tutorials | Creates bad experience |
| Platform-specific (dead platforms) | No demand |
| Extremely niche (under 1,000 potential buyers) | Too small |
| Requires ongoing 1-on-1 time | Not scalable |
| Heavily regulated without disclaimers | Legal risk |
| You don't actually understand | Can't support buyers |

---

## NEXT STEPS

1. **Run the PowerShell script** → Get your CSV inventory
2. **Review against this guide** → Identify promising categories
3. **Score your Top 20** → Use the scoring criteria in main doc
4. **Pick 3 quick wins** → Start building tomorrow
5. **Share sanitized CSV with me** → I'll help you productize

Remember: **Perfection is the enemy of profit.** Ship fast, iterate based on feedback.
