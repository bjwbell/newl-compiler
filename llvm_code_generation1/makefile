default:
	rm -f Newl.hs
	rm -f Scanner.hs
	alex Scanner.x
	happy Newl.y
	ghc --make -optl -w -o newl Scanner.hs Util.hs TypeNames.hs TypeChecking.hs CodeGen.hs Newl.hs

clean:
	rm -f *.hs
	rm -f *.hi
	rm -f *.o
	rm -f newl
LLVM: 
	ghc --make -Wall -optl -w -o TestLLVM TestLLVM.hs Util.hs