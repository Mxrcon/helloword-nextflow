nextflow.enable.dsl=2
def compile_hello_c(){
    """gcc ${workDir}/../modules/c/c_hw.c -o modules/c/c_hw""".execute()
}

process c_hw{
    tag "gcc"
	input: 
		val(check)

    output: 
    	val(message)

    script:

    message = ""
    if(check == true){	
    compile_hello_c()
    message = """${workDir}/../modules/c/c_hw""".execute().text.strip("\n")
    log.info "${message}"
	}

    """
    """
}


