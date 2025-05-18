## ✵ THE ARMADA + CGIT Code Cave ✵
## ⭒⭒⭒ Chunk's Self Hosted Public Code Repositories ⭒⭒⭒⭒
## ========================================================================================================-

#### __- Read Only Except For Members of THE ARMADA -__
#### __- April 2nd 2025 -__
## ========================================================================================================-

***

### [NOTICE]::._>>   _..__:For All Repos Here::__::>
    **If a repository does not have a `LICENCE.md` or `COPYING.md`, or other OBVIOUS licence statement file, then that means it is NOT for sharing or copy or reuse!**

***

- This project is based **strictly** on a Debian 12.9 Linux operating system 

- It uses **only** the packages in the `install.sh` script
    - `fcgiwrap, nginx, lua5.2, python3, bash`

- It contains writing, personalization and images that are my own sole right owned

- The only matter in which someone other than myself should clone and excercise this repository's functions is:
   - To possibly enjoy the `cgit.css`, and reasonably possibly borrow an image or an idea of things I've fixed
   - Or to plageurize my work to making this repository serve as effortless a method to reiterating my own
      - custom CGIT, with many wrinkles ironed out, and make as if they were me in my own likeness

- Beware this repository contains **personal representation of myself** and:
   - THOSE THINGS ARE STRICTLY FORBIDDEN TO COPY OR REUSE!!!!  Use common sense!  I will sue you for your wife, dog, car, pants and all!  (lol unlikely, I'm not nearly going to give a crap that bad but I might destroy your work from my couch tenfold)

- It is permissable to utilize the **FUNCTION** of this program and with respect also to the original creator of CGIT, who also
   - is the man behind Wireguard, a great VPN software, very good.

***

## ========================================================================================================-

### Things I have fixed up from the original CGIT:
#### <a href="https://git.zx2c4.com/cgit/about/" target="_blank">CGIT Repository</a>
#### <a href="https://git.zx2c4.com/cgit/about/" target="_blank"><i>https://git.zx2c4.com/cgit/about/</i></a>

* the filter for email-libravatars.lua did not work, can't recall as of this moment why precisely again, but **NOWHERE** is it said that you have to use a syntax as this: `email-filter=lua:/usr/lib/cgit/filters/email-libravatar.py` NOTICING that `=lua:` is an odd place to put that combination of characters but it seems to prefix the pathname variable for that option so that Lua will work on that filter.

* I did not use Apache2, and yes I like Apache2 (debian styles bb) however I've been using nginx for it's sheer performance and versatility for some time now.  I spent a bit of time to figure out how to get the `http-clone=1` and `clone-url=https://$(HOSTNAME)/$(CGIT_REPO_URL)` to actually engage a git program based reaction.  In the fcgiwrap section of the cgit.conf vhost config I had to declare properly [SCRIPT_NAME,SCRIPT_FILENAME] (name is not filename is name is name is name?  which takes precedence???) and use BOTH of these, same story with BOTH of these: [GIT_PROJECT_ROOT,DOCUMENT_ROOT,HOME], sorry, all THREE **vague and indistinct variables**...  SO without reading the source code, which troubles me often to do unfortunately, thsi guesswork might save you some time also, is to make sure you repeat these vaguelly redundant seeming variables (there could be good reason, i didnt read the source, most ppl might not tho) so that `/usr/lib/git-core/git-http-backend` this program can upload to u on command line using git command the repo in its natural form.  I had to figure that out.

* Also if you decide to use `side-by-side-diff=1` option in cgitrc even on a 1080p laptop screen you might find, as I did, a lot of the table overflowing past the margins of the page in general.  I found using inspect tool in my browser the line number with the `text-wrap: ` CSS option, and changed it to `text-wrap: wrap;` so that lines will break.  I may later on use `text-wrap: breakword;` even for strings like a SVG hash string that goes way off he page and has not one space for CSS to break it.

* Feelsgoodman :D

## ========================================================================================================-

```
Hey I hope this helps somebody, I used v1.2.3 of CGIT, and it's still chilling in development she is, which is great, however I just am a slight perfectionist and made CGIT even moar cool!  I think anyhow ^^
```

## ========================================================================================================-

## Work In Progress!
### [Author]:: __Began working on this on April 2nd 2025 in Western Canada__
#### [The WoodCutter] :or: [Chunk] [Chat XMPP Network]:: <a href="xmpp:chunk@packets.cc">xmpp:chunk@packets.cc</a>
#### [Space Convos]:: <a href="mailto:chunk@packets.cc">chunk@packets.cc</a> :or: <a href="mailto:chunk@inspirenet.org">chunk@inspirenet.org</a>