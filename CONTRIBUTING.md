#Conventions

##Foreign Languages

Use `<foreign xml:lang=”eng”>`, along with a language code, to mark up foreign language usage. According to the TEI P5 documentation on language identification, [this is the authoritative list of language codes](http://www.iana.org/assignments/language-subtag-registry/language-subtag-registry). Codes already used are listed in the `langUsage` section of header.xml. Where that language is ambiguous, unknown, or fictional, we can define our own. Consider this line:  

```
<lb n="070468"/><said>--</said><emph>Thanky vous</emph>, Lenehan said, helping himself.</p>
```

If we define this language in the TEI header like this: 

```
<langUsage>
 <language ident=”franglais”>Franglais, a mixture of French and English</language>
</langUsage>
```

Then we can mark it up like this: 

```
<lb n="070468"/><said>--</said><foreign xml:lang=”franglais”>Thanky vous</foreign>, Lenehan said, helping himself.</p>
```

##Titles of Works

Although the `<title>` tag seems to be used for titles of works in the real world, they might also be applied to fictional works. [The TEI documentation for <title>](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/ref-title.html) gives information about its attribute `level`, which can be used to distinguish between “levels” of publications such as journals, series, or monographs, but this would not cover all the types present in _Ulysses_, so maybe we could use the attribute `type` along with a few types: 

 - artwork: `<title type=”artwork”>The Bath of the Nymph</title> over the bed.`
 - book: `smudged pages. <title type=”book”>Ruby: the Pride of the Ring.</title> Hello.`
 - magazine: `number of <title type=”magazine”>Photo Bits</title>`
 - newspaper: `The <title type=”newspaper”>Evening Telegraph</title>`
 - oratorio: `Dead March from <title type="oratorio">Saul</title>.`
 - pantomime: `in the pantomime of <title type="pantomime">Turko the Terrible</title>`
 - play: `Could I go to see <title type="play">Leah</title> tonight, I wonder.`
 - poem: 
 - short story: `Our prize titbit: <title type=”short story”>Matcham’s Masterstroke</title>`
 - song: `<title type=”song”>Là ci darem</title> with J. C. Doyle, she said, and <title type=”song”>Love's Old Sweet Song</title>`



