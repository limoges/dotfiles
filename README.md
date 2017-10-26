# Why?

I was a little tired of having to setup my computer everytime I went through
a big update or swapped to a new machine. When you are used to working with
a certain set of tools, you want those tools to work exactly like you expect
them to.

This is why I started this personal project to regroup my environment.

---

I've recently had some time to improve this setup and started this as a new project.
I've removed a lot of accumulated bits from the years to keep the essential.

To keep everything organized, I've setup the project into different folder/topics
which can add their own configurations to different tools.


# How?

Every folder representing a single topic, simply add files under the proper
topic and scripts ending with the extension `.zsh` will be included in your shell;
Everything ending with `.symlink` will be symlinked to `$HOME`.

There's a few special files in the hierarchy.

- **bin/**: Everything inside will be added to the `$PATH`.
- **Brewfile**: A list of apps that will be installed through Homebrew
- **topic/path.zsh**: Files named path `path.zsh` will be loaded first and used to
  setup the `$PATH`

## Installing

Simply run this

```sh
cd ~/.dotfiles
script/install
```

# Thanks
Big thanks to Zach Holman, from whom most of the work is copied. His configuration
is very well made works a charm for my personal configuration.
[Zach Holman's Dotfiles](https://github.com/holman/dotfiles/).

