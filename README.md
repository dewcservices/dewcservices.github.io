# DEWCBoK - DEWC Body of Knowledge

Using GitHub Pages and MKDocs.

## GitHub Pages Info

This site is configured to be saved in the `main` branch and served from the `gh-pages` branch, both from the root directory.

## MKDocs Useful Commands
Run from root dir, containing mkdocs.yml.

Serve docs site to browser for dev, available at `http://localhost:8000/`\
`mkdocs serve`

Build a static site into the `site` dir\
`mkdocs build --clean`

Build and deploy static site into GitHub Pages\
`mkdocs gh-deploy --clean`

## Deployment Workflow

1. Ensure all changes are on the `main` branch.
2. Deploy changes to GitHub Pages by running `mkdocs gh-deploy --clean`.
3. Do not edit the contents on the `gh-pages` branch manually, any changes here will be lost at the next deployment.

## MKDocs Theme Customisations

https://squidfunk.github.io/mkdocs-material/customization/

