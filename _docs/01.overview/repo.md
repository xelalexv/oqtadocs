---
title: Cartridge Repo
category: Overview
order: 4
---

#### All Your Cartridges at Your Fingertips
You can store your collection of cartridges and snapshots in a so-called *repo* on the daemon host. This is essentially just a designated folder where you place them. [When set up](https://github.com/xelalexv/oqtadrive/blob/master/doc/repo.md), you can instruct the daemon to directly load files from this repo, rather than uploading them. This feature really shines when you use it with the *standalone* configuration (see [build section]({{site.baseurl}}/02.getting-started/build)) - all your *Spectrum* and *QL* cartridge images ready to load in one little box.

#### Searching Through the Repo
*OqtaDrive* lets you search through the names of the files in the repo, from the command line and the web UI. For quick search results, in particular incremental search in the web UI, the daemon automatically maintains an index of the file names, keeping track of any file changes (addition, removal, rename, move). So searching through a collection with even thousands of files is quick. 

##### Search Terms
Here are the rules for searching and search terms. By default **whole words** in the file name are matched:

- `pac man` - anything with `pac` *or* `man`
- `+pac man` - same, but `pac` is now required
- `+pac +man` - anything with `pac` *and* `man`
- `+pac -man` - anything with `pac` but *not* `man`

Use `*` for globbing:

- `pac*` - anything with a word that starts with `pac`
- `*man` - anything with a word that ends in `man`

To use regular expressions, enclose the term in forward slashes:

- `/19(84|85)/` - any file with `1984` or `1985`

More [details here](http://blevesearch.com/docs/Query-String-Query/)
