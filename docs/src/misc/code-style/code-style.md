
# Code Style
ezFlap's own source code and examples are not consistent with Google's Dart code styling rules.
 * They use tabs instead of spaces.
 * They use CamelCase file names.
 * They are not formatted with `dartfmt`.


## Why?
Google's Dart style guide's goal is to promote consistency among Dart developers.

I am fully on board with the concept of consistency.

It's the "among Dart developers" part that I disagree with.

It's more important to me to be consistent with all the non-Dart code I work with on daily basis.

I just don't engage that much with code written by "random" developers around the world.

But I work with code written by the developers I work with, for specific projects we are involved in, all the time.

These projects are written in different languages, but they all follow more-or-less the same styling rules.

I don't want to use different styling rules specifically for Dart. For me, **that** would be inconsistent.

Consistency aside, like any other developer, I also have my personal preferences and gripes with specific rules from
the Dart style guide.

Here are a few:

### Spaces vs. Tabs
Besides being a personal preference, some developers **need** tabs to be able to read the code more easily due to
medical issues with their eyes, or even just age.

Forcing everybody to use spaces could effectively exclude such developers.

That's wrong, and quite surprising coming from Google.


### Line Length Limit
Like most developers, I prefer shorter lines.

However, when I choose to make an exception - I expect the formatting tool to respect it.


### File Names
The Dart style guide recommends using *snake_case* file names.

I like my file names to be consistent with the classes in them, capitalization and all.

I find it more consistent, more visually-pleasing, and easier to work with, because a class name can be copy-pasted to
places where a file name is expected, and vice-versa, without converting between *CamelCase* and *snake_case*.


### Fingers Crossed
I hope that some day Google will relax the rules a little (or a lot!).

Until then, we will just have to keep bending them :)
