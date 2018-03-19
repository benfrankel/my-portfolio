+++
title = "Powered by Hugo"
description = "How this site was made." 
date = "2018-03-19"
tags = [
    "hugo",
    "web",
]
categories = [
    "Web Development",
]
+++

The source code for this website can be found [here](https://github.com/benfrankel/my-portfolio), and the static site itself can be found [here](https://github.com/benfrankel/benfrankel.github.io).

I build the site from source using the static site generator [Hugo] with my own [Butter] theme,[^1] and then I deploy to [Github Pages].

The `benfrankel.me` domain name was registered through [Namecheap] \(free of charge, as long as I have a .edu email).

I use [Cloudflare] for HTTPS support, because Github Pages' content delivery network does not (at the time of this writing) support HTTPS for custom domain names. See [here](https://gist.github.com/coolaj86/e07d42f5961c68fc1fc8) for the latest news on that front.

[Hugo]: https://gohugo.io/
[Butter]: https://github.com/benfrankel/butter/
[Cocoa Enhanced]: https://github.com/mtn/cocoa-eh-hugo-theme/
[Pixyll]: https://github.com/johno/pixyll/
[Github Pages]: https://pages.github.com/
[Namecheap]: https://www.namecheap.com/
[Cloudflare]: https://www.cloudflare.com/

[^1]: Inspired by Hugo's [Cocoa Enhanced] theme and Jekyll's [Pixyll] theme.
