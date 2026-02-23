# AP Seminar IRR

[View the Paper (IRR.pdf)](IRR.pdf)

An AP Seminar Individual Written Argument exploring how AI sycophancy exacerbates the crisis of loneliness.

## Format

This project uses Markdown with LaTeX formatting:

- **Source**: [`IRR.md`](IRR.md) — written in Markdown with YAML frontmatter for PDF generation
- **Output**: [`IRR.pdf`](IRR.pdf) — compiled academic paper
- **Compile**: Run `./compile.sh` to regenerate the PDF (requires pandoc and xelatex)

The paper includes word count markers that are automatically replaced during compilation:
```markdown
<!-- START_WORD_COUNT -->
...content...
<!-- END_WORD_COUNT -->
```

## Setup

After cloning, install the git hook to auto-compile on commit:

```bash
./setup-hooks.sh
```

This ensures the PDF is always up-to-date before pushing.
