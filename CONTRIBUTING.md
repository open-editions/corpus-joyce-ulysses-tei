##_Ulysses_ (1922; 1984 [rev. 1986]; 2017)

James Joyce’s _Ulysses_ entered the public domain on 1 January 2012. This repository makes available the reading text of the novel from _Ulysses: A Critical and Synoptic Edition_ (1984 [rev. 1986]) prepared by Hans Walter Gabler with Wolfhard Steppe and Claus Melchior. In the spring and summer of 2016, Gabler used TUSTEP to encode plain-text versions of the eighteen episodes in a light TEI-compliant markup. The results are now made available for XML manipulation and enrichment.

The edited shape of the reading text as constituted by the _Critical and Synoptic Edition_ continues to be controlled by the copyright © 1984 Hans Walter Gabler. The reference basis is a line numbering per episode, and referencing is consequently by episode.line numbers (not by pagination or page.line numbers). The reading text’s line-fall should therefore be preserved across GitHub pushes.

The enriched corpus of episode files and metadata will, following an original suggestion by Gábor Mihály Tóth, be made available through the [University of Oxford Text Archive](https://ota.ox.ac.uk/) and will also be selectively ‘pushed’ into the TEI encoding of _Ulysses: A Digital Critical and Synoptic Edition_.

#Conventions

##Foreign Languages

Use `<foreign xml:lang="eng">`, along with a language code, to mark up foreign language usage. According to the TEI P5 documentation on language identification, [this is the authoritative list of language codes](http://www.iana.org/assignments/language-subtag-registry/language-subtag-registry). Codes already used are listed in the `langUsage` section of header.xml. Where that language is ambiguous, unknown, or fictional, we can define our own. Consider this line:  

```
<lb n="070468"/><said>--</said><emph>Thanky vous</emph>, Lenehan said, helping himself.</p>
```

If we define this language in the TEI header like this: 

```
<langUsage>
 <language ident="franglais">Franglais, a mixture of French and English</language>
</langUsage>
```

Then we can mark it up like this: 

```
<lb n="070468"/><said>--</said><foreign xml:lang="franglais">Thanky vous</foreign>, Lenehan said, helping himself.</p>
```

##Titles of Works

Although the `<title>` tag seems to be used for titles of works in the real world, they might also be applied to fictional works. [The TEI documentation for `<title>`](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/ref-title.html) gives information about its attribute `level`, which can be used to distinguish between “levels” of publications such as journals, series, or monographs, but this would not cover all the types present in _Ulysses_, so maybe we could use the attribute `type` along with a few types: 

 - artwork: `<title type="artwork">The Bath of the Nymph</title> over the bed.`
 - book: `smudged pages. <title type="book">Ruby: the Pride of the Ring.</title> Hello.`
 - magazine: `number of <title type="magazine">Photo Bits</title>`
 - newspaper: `The <title type="newspaper">Evening Telegraph</title>`
 - oratorio: `Dead March from <title type="oratorio">Saul</title>.`
 - pantomime: `in the pantomime of <title type="pantomime">Turko the Terrible</title>`
 - play: `Could I go to see <title type="play">Leah</title> tonight, I wonder.`
 - poem: `<title type="poem">Art thou real, my ideal?</title> it was called by Louis J Walsh, Magherafelt`
 - short story: `Our prize titbit: <title type="short story">Matcham’s Masterstroke</title>`
 - song: `<title type="song">Là ci darem</title> with J. C. Doyle, she said, and <title type="song">Love's Old Sweet Song</title>`



