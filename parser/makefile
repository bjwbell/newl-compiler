default:
	rm -f newl.hs
	rm -f scanner.hs
	alex scanner.x
	happy newl.y
	ghc -o newl scanner.hs newl.hs

clean:
	rm -f *.hs
	rm -f *.hi
	rm -f *.o
	rm -f newl
