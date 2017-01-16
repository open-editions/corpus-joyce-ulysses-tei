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
