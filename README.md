# CV Wonder Action

This action uses [cvwonder](https://github.com/germainlefebvre4/cvwonder) to generate the CV (YAML) in PDF or HTML format.

## Getting started

```yaml
on:
  push:

jobs:
  cvwonder:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
        with:
          path: cvwonder-action

      - name: Download CV in YAML format
        shell: bash
        run: curl -LO https://raw.githubusercontent.com/germainlefebvre4/cvwonder/refs/heads/main/cv.yml

      - name: Run cvwonder-action
        uses: germainlefebvre4/cvwonder-action@v0

      - name: Run cvwonder-action
        shell: bash
        run: ls -la generated/*.pdf
```

## Usage

```yaml
jobs:
  cvwonder:
    runs-on: ubuntu-latest
    steps:
      - name: Run cvwonder-action
        uses: germainlefebvre4/cvwonder-action@v0
        with:
          version: 'v0.3.0'
          input: 'cv.yml'
          theme_url: 'https://github.com/germainlefebvre4/cvwonder-theme-basic'
          output: 'generated/'
          format: 'pdf'
```

### Inputs 📥


| Input | Required | Default | Description |
| --- | --- | --- | --- |
| `version` | `false` | `v0.3.0` | Version of CV Wonder. See [CV Wonder Releases](https://github.com/germainlefebvre4/cvwonder/releases). |
| `input` | `true` | `cv.yml` | File path of the CV in YAML format. |
| `theme_url` | `true` | `https://github.com/germainlefebvre4/cvwonder-theme-basic` | Link to the CV Wonder theme to use/download. |
| `output` | `true` | `generated/` | Output directory for generated CV. |
| `format` | `true` | `pdf` | Output format of the CV: `pdf` or `html`. |


### Outputs 📤

| Output | Description |
| --- | --- |

## Compatibility

This action is compatible with the following versions of CV Wonder:

| Release | CV Wonder |
| --- | --- |
| `v0` | `>= v0.2.0` |

## License

The scripts and documentation in this project are released under the [MIT License](./LICENSE).