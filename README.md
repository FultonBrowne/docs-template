# docs-template
 A simple documentation page template for my projects

## Usage
Build and serve the documentation with the following commands:
```bash
pip install -r requirements.txt
mkdocs build
mkdocs serve
```
or run on docker:
```bash
docker build -t docs-template .
docker run -p 8000:8000 docs-template
```