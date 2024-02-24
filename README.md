# simplewdiff

Compare files with word-by-word diffs, and omit unchanged lines. Thin wrapper atop wdiff, grep, and colordiff. The difference between this and wdiff is that this tool has more sensible defaults. wdiff does not color by default, we do; wdiff does not omit unchanged lines by defaut, we do.

## Install

```
brew tap Divide-By-0/simplewdiff
brew install simplewdiff
```

## Usage

```
simplewdiff /path/to/file1 /path/to/file2
```
