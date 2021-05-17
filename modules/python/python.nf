nextflow.enable.dsl=2

process python_hw{
	tag "python"
    input: 
		val(check)

    output: 
    	val(message)

    script:
    message = ""
    if(check == true){
    message = """python ${workDir}/../modules/python/python_hw.py""".execute().text.strip("\n")
    log.info "${message}"
	}
    """
    """
}


