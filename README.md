# Resume Updates

A LaTeX-based resume management system for creating and maintaining professional resumes.

## Overview

This repository contains LaTeX source files for generating professional resumes. It includes a base resume template (`base_resume.tex`) that can be customized for different job applications.

## Structure

```
.
├── base_resume.tex       # Main resume LaTeX source file
├── output/               # Compiled PDF outputs
│   └── SaidAltan/       # Resume variants
├── resume.pdf           # Main compiled resume
└── README.md            # This file
```

## Prerequisites

To compile the LaTeX resume, you'll need:
- LaTeX distribution (TeX Live, MiKTeX, or MacTeX)
- pdflatex compiler

## Usage

### Compiling the Resume

To compile the base resume:

```bash
pdflatex base_resume.tex
```

This will generate a PDF file in the current directory.

### Creating Custom Versions

1. Copy `base_resume.tex` to a new file (e.g., `resume_company.tex`)
2. Modify the content to tailor it for specific applications
3. Compile the customized version

## Customization

The resume template uses standard LaTeX article class with custom formatting. Key sections include:
- Header/Contact Information
- Education
- Experience
- Projects
- Skills

Modify the content in `base_resume.tex` to update your resume.

## Output

Compiled PDFs are organized in the `output/` directory by name or version.

## License

See LICENSE file for details.
