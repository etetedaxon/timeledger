# TimeLedger — PDF Reading Experience

A fresh PDF-first TimeLedger website.

## Current preview
- Email-only local entry (not real authentication).
- PDF files are read in-browser using PDF.js.
- Documents, page progress, bookmarks, folders and notes are stored in browser localStorage.
- Reading modes and typography controls are included as a first interface pass.
- No server receives uploaded PDFs.

## Important limitations in this first build
- Email entry is a local profile selector, not secure identity verification. Do not use it for private multi-user accounts yet.
- PDF file bytes are stored in localStorage for this prototype. Browser storage is limited; a production build should move document bytes and metadata to IndexedDB.
- The PDF is rendered as its original page canvas. Bold-leading text transformation, text selection/highlighting, annotation tools, and reliable text extraction are not implemented yet.
- Reading time and pages read are a basic first pass, not a complete analytics engine.
- Folder management is a simple classification, not nested folder/file management.
- PDF.js and fonts load from public CDNs.

## Next engineering steps
1. Move file storage to IndexedDB and add import/export/backup.
2. Implement PDF text layer for selection, highlights and bold-leading rendering.
3. Add durable session accounting, page-level reading progress and document completion.
4. Add real passwordless email authentication and private cloud sync only if desired; local-first mode remains available.
5. Add screen-reader support, keyboard navigation, accessibility testing and mobile testing.
6. Add PDF analysis and simplified learning assistant in a separate opt-in stage.
