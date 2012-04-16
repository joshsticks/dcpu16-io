Assembler := Object clone do (
	opCodes := Map clone do (
		# 0x0: non-basic instruction - see below
	    atPut("SET", 0x01)# 0x1: SET a, b - sets a to b
	    atPut("ADD", 0x02)# 0x2: ADD a, b - sets a to a+b, sets O to 0x0001 if there's an overflow, 0x0 otherwise
	    atPut("SUB", 0x03)# 0x3: SUB a, b - sets a to a-b, sets O to 0xffff if there's an underflow, 0x0 otherwise
	    atPut("MUL", 0x04)# 0x4: MUL a, b - sets a to a*b, sets O to ((a*b)>>16)&0xffff
	    atPut("DIV", 0x05)# 0x5: DIV a, b - sets a to a/b, sets O to ((a<<16)/b)&0xffff. if b==0, sets a and O to 0 instead.
	    atPut("MOD", 0x06)# 0x6: MOD a, b - sets a to a%b. if b==0, sets a to 0 instead.
	    atPut("SHL", 0x07)# 0x7: SHL a, b - sets a to a<<b, sets O to ((a<<b)>>16)&0xffff
	    atPut("SHR", 0x08)# 0x8: SHR a, b - sets a to a>>b, sets O to ((a<<16)>>b)&0xffff
	    atPut("AND", 0x09)# 0x9: AND a, b - sets a to a&b
	    atPut("BOR", 0x0a)# 0xa: BOR a, b - sets a to a|b
	    atPut("XOR", 0x0b)# 0xb: XOR a, b - sets a to a^b
	    atPut("IFE", 0x0c)# 0xc: IFE a, b - performs next instruction only if a==b
	    atPut("IFN", 0x0d)# 0xd: IFN a, b - performs next instruction only if a!=b
	    atPut("IFG", 0x0e)# 0xe: IFG a, b - performs next instruction only if a>b
	    atPut("IFB", 0x0f)# 0xf: IFB a, b - performs next instruction only if (a&b)!=0
	)
	
	assemble := method (
		text,
		
		//strip and make a single line
		text := text asMutable strip
		
		index := 0
		tokens := List clone
		
		while( index < text size,
			chunk := text exSlice(index)
			
			re := Regex with("(?\\d+)([ \t]+)?(?\\w+)")
			//find a token
			
				//figure out if an opcode
				//make it binary and add to tokens
				//*******tokens may need to be just a string, since this example is from a lexer.
				
			// should be after finding something move it's length
			index := index + 1
		)
		
		
		text size println
		"NOT DONE" println
	)
)
