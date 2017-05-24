# Contributing to this Edition

# Submitting a Change
If you’re new to collaboration on GitHub, please see the [contribution guide for the open edition of _A Portrait of an Artist as a Young Man_](https://github.com/JonathanReeve/corpus-joyce-portrait-TEI/blob/gh-pages/CONTRIBUTING.md) which is written with beginners in mind. For everyone else, please feel free to submit pull requests. Make sure to read the Conventions section below for the markup conventions we have been using. After submitting your pull request, your markup will be automatically checked for validity against the TEI DTD, using Travis CI. The process takes about two minutes. Check your pull request on GitHub again after two minutes, and see whether it is labeled “build passes” or “build fails.” If it’s labeled “build fails,” please fix your errors and push your fixes to the same pull request. You can see the errors your request generated in [the pull requests section of our Travis CI site](https://travis-ci.org/JonathanReeve/corpus-joyce-ulysses-tei/pull_requests). 

# Conventions

The following section describes markup conventions we have been employing, especially as they deviate from or extend standard TEI conventions. This list is intended to be descriptive, rather than proscriptive, and will change and evolve along with the edition, as necessary. For anything not listed here, please check [the open issues](https://github.com/JonathanReeve/corpus-joyce-ulysses-tei/issues) to see whether we’re having a discussion about it. 

## Foreign Languages

Use `<foreign xml:lang="eng">`, along with a language code, to mark up foreign language usage. According to the TEI P5 documentation on language identification, [this is the authoritative list of language codes](http://www.iana.org/assignments/language-subtag-registry/language-subtag-registry). Codes already used are listed in the `langUsage` section of header.xml. Where that language is ambiguous, unknown, or fictional, we can define our own. Consider this line:  

```xml
<lb n="070468"/><said>―<emph>Thanky vous</emph>,</said> Lenehan said, helping himself.</p>
```

If we define this language in the TEI header like this: 

```xml
<langUsage>
 <language ident="franglais">Franglais, a mixture of French and English</language>
</langUsage>
```

Then we can mark it up like this: 

```xml
<lb n="070468"/><said>―<foreign xml:lang="franglais">Thanky vous</foreign>,</said> Lenehan said, helping himself.</p>
```

Not all foreign language usage is explicitly marked typographically in the novel. We assume `rend="italics"` to be a default attribute and value on `<foreign>` so, in such unmarked cases, use `<foreign xml:lang="eng" rend="none">`, along with a language code, to mark up foreign language usage that is not italicised in the reading text. For example, the following line contains two instances of French usage, only one of which is marked:

```xml
Of what in the other devil's name? <foreign xml:lang="fr" rend="none">Paysayenn</foreign>. P. C. N., you know: <foreign xml:lang="fr">physiques, chimiques et naturelles</foreign>.
```

## Titles of Works

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

Subtitles can be handled, following the TEI suggestions for `@type`, with `<title type=”sub”>`. 

Titles are be rendered as italicized by default, so if a given title isn’t italicized in the text, mark it up with `<title rend=”none”>`. 

## Dialogue Attribution

Dialogue is marked up with `<said>` and using the `@who` attribute, as in `<said who="Stephen Dedalus">`. 
 
 - For the moment, full names should be used, where known. (Although in the future we hope to shift to XML IDs; see [#19](https://github.com/JonathanReeve/corpus-joyce-ulysses-tei/issues/19). 
 - You can check the list of characters currently used with `make chars`, a command in the [Makefile](https://github.com/JonathanReeve/corpus-joyce-ulysses-tei/blob/master/Makefile). (This requires that you have `ag` (The Silver Searcher) installed, and of course GNU `make`. See [Chris Foster’s comment in issue 19](https://github.com/JonathanReeve/corpus-joyce-ulysses-tei/issues/19#issuecomment-278453253). 

If a character quotes direct speech within her speech, we’re encoding it like this:

```xml
<said who="Stephen Dedalus">―You said,</said> Stephen answered, <said who="Stephen Dedalus"><said who="Buck Mulligan" rend="italics">O, it's only Dedalus whose mother is beastly dead</said>.</said>
```

If direct speech is recalled in interior monologue or (occasionally) represented in the third-person narrative using italics, we’re encoding it like this:

```xml
she was one of those good souls who had always to be told twice <said who="Father Conmee" direct="false" rend="italics">bless you, my child,</said> that they have been absolved, <said who="Father Conmee" direct="false" rend="italics">pray for me</said>.
```

For more on this, see [the discussion in issue #20](https://github.com/JonathanReeve/corpus-joyce-ulysses-tei/issues/20#issuecomment-280171254). 


