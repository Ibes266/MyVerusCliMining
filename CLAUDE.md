# Notes for Claude

## Converting files to Markdown (MarkItDown)

[Microsoft MarkItDown](https://github.com/microsoft/markitdown) is installed (`markitdown[all]`)
by the SessionStart hook `.claude/hooks/install-markitdown.sh`.

When the user asks to convert a file to Markdown (in any language, e.g. "حوّل هذا الملف إلى Markdown"):

1. Run: `markitdown "<input file>" -o "<same name>.md"`
   (or `markitdown "<URL>"` for web pages / YouTube links).
2. If `markitdown` is missing, run `bash .claude/hooks/install-markitdown.sh` first.
3. Show the user a short preview and the path of the resulting `.md` file.

Supported: PDF, Word (.docx), PowerPoint (.pptx), Excel (.xlsx/.xls), HTML, CSV, JSON, XML,
images (EXIF metadata), audio (transcription), ZIP archives, EPUB, Outlook .msg, YouTube URLs.
