# _Ulysses_ (1922; 1984 [rev. 1986]; 2017)

[![Build Status](https://travis-ci.org/open-editions/corpus-joyce-ulysses-tei.svg?branch=master)](https://travis-ci.org/JonathanReeve/corpus-joyce-ulysses-tei)

[![DOI](https://zenodo.org/badge/79138597.svg)](https://zenodo.org/badge/latestdoi/79138597)

[![Join the chat at https://gitter.im/open-editions/Lobby](https://badges.gitter.im/open-editions/Lobby.svg)](https://gitter.im/open-editions/Lobby?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

James Joyce's _Ulysses_ entered the public domain on 1 January 2012. This repository makes available the reading text of the novel from _Ulysses: A Critical and Synoptic Edition_ (1984 [rev. 1986]) prepared by Hans Walter Gabler with Wolfhard Steppe and Claus Melchior. In the spring and summer of 2016, Gabler used TUSTEP to encode plain-text versions of the eighteen episodes in a light TEI-compliant markup. The results are now made available for XML manipulation and enrichment.

The edited shape of the reading text as constituted by the _Critical and Synoptic Edition_ continues to be controlled by the copyright © 1984 Hans Walter Gabler. The reference basis is a line numbering per episode, and referencing is consequently by episode.line numbers (not by pagination or page.line numbers). The reading text’s line-fall should therefore be preserved across GitHub pushes.

The enriched corpus of episode files and metadata will, following an original suggestion by Gábor Mihály Tóth, be made available through the [University of Oxford Text Archive](https://ota.ox.ac.uk/) and will also be selectively ‘pushed’ into the TEI encoding of _Ulysses: A Digital Critical and Synoptic Edition_.

## Testing Prototype

[A simple, proof-of-concept XSL transformation of the TEI may be found here](https://ulysses-tei.netlify.com/). At the moment, the only semantic markup rendered here is dialogue attribution. The prototype is not meant as a complete representation of the TEI text.
