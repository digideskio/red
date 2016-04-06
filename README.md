# There's a unix in my ruby!

 A ruby implementation of `sed`.
 It can be invoked by running the following command in the repo directory:

    ./red.rb -e "s/before/after/" file_name

 Doing so will output the contents of file_name with all occurences of "before"
replaced with "after".

 To try it out on the existing test file, just run:

    ./red.rb -e "s/foo/bar/" test.txt

---

Written by [@gabebw](https://twitter.com/gabebw) and
[@jcmorrow](https://github.com/jcmorrow)
