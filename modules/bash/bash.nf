nextflow.enable.dsl=2

process bash_hw{
	tag "bash"
	input: 
		val(check)

    output: 
    	val(message)

    script:
    message = ""
    if(check == true){
    message = """bash ${workDir}/../modules/bash/bash_hw.sh""".execute().text.strip("\n")
	log.info "${message}"
	}

	"""
	"""
}


