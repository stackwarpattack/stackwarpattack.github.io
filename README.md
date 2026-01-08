## Serving the website

``` sh
# Serve directly if you have hugo installed
hugo serve
# Serve with the nix-pinned hugo version
nix run
```

## Generating the favicon

``` sh
nix-shell -p imagemagick --run 'magick -density 300 -define icon:auto-resize=256,128,96,64,48,32,16 -background none static/ghostwrite-no-text.svg static/favicon.ico'
```
