# SAFETY & PRIVACY GUIDE
## How to Audit Your Drives Without Exposing Sensitive Data

---

## ✅ WHAT IS SAFE TO SHARE

These are SAFE to include in your CSV inventory:

| Safe | Example |
|------|---------|
| File names | `TikTok_Growth_Guide_v2.pdf` |
| Folder paths | `I:\Business\Courses\TikTok` |
| File extensions | `.pdf`, `.docx`, `.xlsx` |
| File sizes | `2.4 MB` |
| Dates modified | `2024-03-15` |
| Generic descriptions | `Marketing course about Instagram` |

---

## ❌ WHAT TO NEVER SHARE

**DO NOT include these in any CSV or upload:**

| Dangerous | Why | Action |
|-----------|-----|--------|
| Password files | Security risk | Delete row from CSV |
| Bank statements | Financial fraud risk | Delete row from CSV |
| ID documents | Identity theft | Delete row from CSV |
| Legal contracts | Attorney-client privilege | Delete row from CSV |
| Client files | Breach of trust | Anonymize or delete |
| Personal photos | Privacy violation | Exclude entire folder |
| Tax documents | Financial exposure | Delete row from CSV |
| Medical records | HIPAA violations | Delete row from CSV |
| Proprietary code you don't own | IP theft | Verify ownership first |
| Employee records | GDPR/privacy laws | Delete row from CSV |

---

## 🔒 BEFORE YOU SHARE YOUR CSV

### Step 1: Review Every Row
Open `I_drive_asset_inventory.csv` and `C_drive_asset_inventory.csv` in Excel

### Step 2: Delete Sensitive Rows
Look for these keywords in filenames and DELETE the entire row:
```
password, login, credential, secret, key, token
bank, statement, account, routing, iban, swift
tax, return, w2, 1099, invoice (personal)
contract, agreement, nda, legal (client)
medical, health, insurance, diagnosis
ssn, social security, passport, license
private, personal, family, photo
```

### Step 3: Redact If Unsure
If you see something questionable, either:
- Delete the entire row, OR
- Change filename to generic: `document.pdf` → `guide.pdf`
- Remove folder path specifics: `I:\Business\SecretProject\file.pdf` → `I:\Business\guide.pdf`

### Step 4: Check for Accidental Content
Some files embed metadata. These formats are usually safe (metadata only):
- PDFs: Usually safe if no personal info in title
- Images: May contain location data
- Word docs: May contain author name

**To be extra safe:** Open suspicious files and check Properties → Details

---

## 🛡️ ANONYMIZATION TUTORIAL

### Option 1: Delete the Row (Safest)
Simply delete entire CSV rows containing sensitive info.

### Option 2: Generic Replace
Replace specific names with generics:

| Original | Anonymized |
|----------|------------|
| `AcmeCorp_Contract_2024.pdf` | `Client_Contract_2024.pdf` |
| `John_Smith_Case_Notes.docx` | `Client_Case_Notes.docx` |
| `Bermuda_Bank_Statement_Mar.pdf` | `Bank_Statement_Mar.pdf` |

### Option 3: Partial Redaction
Replace identifying parts:
- `SSN_123-45-6789_scan.pdf` → `Tax_Document_Redacted.pdf`

---

## ✅ VERIFICATION CHECKLIST

Before sending me your CSV, check:

- [ ] No password/login files
- [ ] No bank/financial documents
- [ ] No legal contracts with real names
- [ ] No ID/passport/driver's license scans
- [ ] No medical/health records
- [ ] No tax documents
- [ ] No personal photos (unless stock/public)
- [ ] No client names in filenames
- [ ] No employee records
- [ ] Folder paths don't reveal home address

---

## 🚨 RED FLAGS - STOP AND DELETE

If you see any of these, DELETE THE ROW immediately:

```
Files named:
- *password*.txt, *pwd*.doc, *login*.xls
- *bank*statement*.pdf
- *tax*return*.pdf, *w2*.pdf, *1099*.pdf
- *contract*.pdf with company names
- *confidential*.doc
- *private*.jpg, *personal*.png
- *ssn*.pdf, *passport*.jpg
- *medical*.pdf, *health*.doc
```

---

## 📋 SAFE SHARING PROTOCOL

### What I Need From You:
1. `I_drive_asset_inventory.csv` (sanitized)
2. `C_drive_asset_inventory.csv` (sanitized)
3. Optional: 2-3 SENTENCE descriptions of promising files

### What I DON'T Need:
- File contents
- Personal stories
- Client names
- Financial details
- Actual documents

---

## 🔍 EXAMPLE: GOOD vs BAD CSV ROWS

### ❌ BAD (Don't Share):

| FileName | FolderPath | Extension | SizeMB | DateModified | KeywordsFound |
|----------|-----------|-----------|--------|--------------|---------------|
| `AcmeCorp_Bank_Statement_Mar.pdf` | `I:\Banking\AcmeCorp` | .pdf | 2.4 | 2024-03-15 | bank |
| `John_Smith_Contract_FINAL.pdf` | `I:\Legal\Clients\Smith` | .pdf | 1.8 | 2024-02-20 | contract |
| `Passwords_Backup_2024.txt` | `C:\Users\Admin\Documents` | .txt | 0.1 | 2024-04-01 | password |

### ✅ GOOD (Safe to Share):

| FileName | FolderPath | Extension | SizeMB | DateModified | KeywordsFound |
|----------|-----------|-----------|--------|--------------|---------------|
| `Digital_Marketing_Guide_2024.pdf` | `I:\Business\Courses` | .pdf | 45.2 | 2024-01-10 | course, marketing |
| `TikTok_Scripts_Bundle.docx` | `I:\Content\Social` | .docx | 12.7 | 2024-03-20 | TikTok, script |
| `AI_Prompts_Master_List.txt` | `I:\AI_Tools` | .txt | 0.5 | 2024-04-05 | AI, prompt |

---

## 💬 WHEN IN DOUBT

**Ask yourself:**
- Would I post this on Twitter/X?
- Would I want my competitor to see this?
- Is this information public?
- Could this harm someone if leaked?

**If NO to any → DELETE THE ROW**

---

## 🎯 REMEMBER

Your goal: **Find content to productize**

My goal: **Help you turn it into income**

We don't need:
- Your secrets
- Client data
- Financial details
- Personal information

We DO need:
- File names
- General topics
- Approximate sizes
- Dates

**When in doubt, redact it out.**

---

## ✅ FINAL CHECKLIST BEFORE UPLOAD

- [ ] Reviewed all rows in both CSVs
- [ ] Deleted sensitive/personal rows
- [ ] Anonymized client names
- [ ] Removed financial documents
- [ ] Removed legal contracts
- [ ] Removed passwords/credentials
- [ ] Verified no home addresses in paths
- [ ] Saved clean version as NEW file
- [ ] Original CSV deleted or secured

**Only after all checked → Share with me**
