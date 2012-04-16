assembler := Assembler clone
assembler opCodes at("SET") asHex println
assembler opCodes at("ADD") println
assembler opCodes at("SUB") println
assembler assemble(" barf\n ")