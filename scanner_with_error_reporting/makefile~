default:
	rm -f newl.hs
	rm -f Scanner.hs
	alex Scanner.x
	happy newl.y
	ghc Scanner.hs newl.hs