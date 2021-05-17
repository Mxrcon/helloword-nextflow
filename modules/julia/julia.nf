nextflow.enable.dsl=2

process julia_hw{
	tag "julia"
    input: 
		val(check)

    output: 
    	val(message)

    script:
    if(check == true){
    message = """julia ${workDir}/../modules/julia/julia_hw.jl""".execute().text.strip("\n")
    log.info "${message}"
	}
    """
    """
}


