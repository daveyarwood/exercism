# Difference Of Squares

Find the difference between the sum of the squares and the square of the sum of the first N natural numbers.

The square of the sum of the first ten natural numbers is,

    (1 + 2 + ... + 10)**2 = 55**2 = 3025

The sum of the squares of the first ten natural numbers is,

    1**2 + 2**2 + ... + 10**2 = 385

Hence the difference between the square of the sum of the first
ten natural numbers and the sum of the squares is 2640:

    3025 - 385 = 2640

### Getting started
#### MacOS
First install Lua and [Luarocks][2] using [Homebrew][1]:

```shell
$ brew install lua
```

Then install the [Busted][3] testing framework for Lua:

```shell
$ luarocks install busted
```

Then run your tests:

```shell
$ busted .
```

#### Ubuntu
First install Lua and [Luarocks][2] using [Apt][6]:

```shell
$ sudo apt-get install lua5.3 luarocks
```

Then install the [Busted][3] testing framework for Lua:

```shell
$ luarocks install busted
```

If this fails, you may need to use `sudo`:

```shell
$ sudo luarocks install busted
```

Then run your tests:

```shell
$ busted .
```

#### Windows
First install Lua and [Luarocks][2] using [Chocolatey][7]:

```
C:\> choco install lua
```

Then install the [Busted][3] testing framework for Lua:

```
C:\> luarocks install busted
```

Then run your tests:

```
C:\> busted .
```

#### Other resources

  1. [Lua Style Guide][4]
  2. [Learn Lua in 15 minutes][5]

[1]: http://brew.sh/
[2]: http://luarocks.org/
[3]: http://olivinelabs.com/busted/
[4]: https://github.com/Olivine-Labs/lua-style-guide
[5]: http://tylerneylon.com/a/learn-lua/
[6]: https://help.ubuntu.com/lts/serverguide/apt.html
[7]: http://chocolatey.org/

## Source

Problem 6 at Project Euler [http://projecteuler.net/problem=6](http://projecteuler.net/problem=6)

## Submitting Incomplete Problems
It's possible to submit an incomplete solution so you can see how others have completed the exercise.

