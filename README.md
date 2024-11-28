# luassg

Static Site Generator written by lua.

## Development

Requirements

- [hererocks](https://github.com/luarocks/hererocks)


Setup lua environment.
```bash
# init lua env
hererocks . --lua 5.4.6 --luarocks latest

# activate lua env
source bin/activate
```

Example

```bash
$ cat test.md                                                                                                            22:42:49

# Hello

こんにちはみなさん！

## Toc 2

with !

$ lua main.lua test.md                                                                                                   22:43:18
File converted to HTML
$ cat test.md.html                                                                                                       22:43:31

<h1>Hello</h1>

<p>こんにちはみなさん！</p>

<h2>Toc 2</h2>

<p>with !</p>
```

## LICENSE

This project is licensed under the MIT License.

This project uses the following third-party library:
- [markdown](https://github.com/mpeterv/markdown), licensed under the MIT License.

