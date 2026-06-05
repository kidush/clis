# Tiny Perl CLIs

A small collection of tiny command-line programs written in Perl.

This repository starts with a minimal `wc` implementation and will grow with other familiar Unix-style tools such as `ls`. The goal is to learn Perl by rebuilding small utilities, keeping each program readable enough to explain in short posts.

## Programs

### `wc.pl`

Counts basic file statistics.

```sh
perl wc.pl file.txt
```

Prints:

```text
<lines> <words> <file>
```

Line-only mode:

```sh
perl wc.pl -l file.txt
```

Prints:

```text
<lines> <file>
```

## Requirements

- Perl 5.36 or newer

## Why

This is a learning playground: small Perl programs first, then posts explaining what each one teaches about Perl, command-line interfaces, and Unix tools.
