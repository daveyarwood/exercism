# Bob

Bob is a lackadaisical teenager. In conversation, his responses are very limited.

Bob answers 'Sure.' if you ask him a question.

He answers 'Whoa, chill out!' if you yell at him.

He says 'Fine. Be that way!' if you address him without actually saying
anything.

He answers 'Whatever.' to anything else.

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

Inspired by the 'Deaf Grandma' exercise in Chris Pine's Learn to Program tutorial. [http://pine.fm/LearnToProgram/?Chapter=06](http://pine.fm/LearnToProgram/?Chapter=06)

## Submitting Incomplete Problems
It's possible to submit an incomplete solution so you can see how others have completed the exercise.

