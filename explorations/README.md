# BAML Exploration

This directory contains my workspace for experiments, prototypes, and reference materials.

## Naming Conventions

Each exploration is put to its own folder:

- **Exploration container**: `eYYMMDD_descriptive_name` (e.g., `e250325_env_setup`)

  - `e` for "exploration"
  - Date prefix for chronological sorting
  - Underscores for Python compatibility
  - Use suffixes `b`, `c`, etc. (e.g., `e250428b`, `e250428c`) to distinguish exploration forks or separate explorations started on the same date. This ensures unique, chronologically sortable names without ambiguity.

Each sequential step in the exploration (running code, documenting of design reasoning and architectural decisions, etc.) is put in its own file:

- **Step artifact**: `sNN_descriptive_name` (e.g., `s01_check_api_connection.ipynb`)
  - `s` for "step"
  - Number prefix for sequential ordering
  - Each new file gets the next number in sequence (f01, f02, f03...)
  - This applies even to related files (e.g., `s02_solution.py` and `s03_solution.ipynb` which uses the python file)
  - Maintains clear chronology and potential dependency relationships

## Python Compatibility

All folders use Python-friendly naming to enable easy imports between explorations when needed, supporting rapid prototyping and experimentation.
