---
    name: EgyBest scraper
    description: egytbest.live WP-JSON + data-embed-url scraper integration
    ---

    ## Scraper: EgyBest (egytbest.live)

    WP-JSON API works directly (no CF proxy needed) from both Replit and VPS IPs.
    Search: GET /wp-json/wp/v2/posts?search={title}+{ep}&per_page=10&_fields=id,link,title
    Episode page has data-embed-url="URL" attributes per server.
    Embed providers: hgcloud.to (StreamHG/cdn-centaurus.com), fastvip.space, voe.sx, mixdrop.top, stmruby.com, bysekoze.com, vidaraa.cc, playmogo.com

    **Why:** extractVideoDeep parseStreamwish runs unpackPacked on eval(function(p,a,c,k)) packed JS, matches "hls2":"https://...m3u8..." in var links={} object.

    Files changed:
    - anime.ts: getEgyBestSources(), scrapeCached("egybest"), case "egybest", parseStreamwish list
    - animation.ts: scrapeAnimCached("egybest_anim") delegates to internal API
    