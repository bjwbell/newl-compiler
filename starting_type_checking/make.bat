del Newl.hs
del Scanner.hs
alex Scanner.x
happy Newl.y
ghc -o newl Scanner.hs Newl.hs