nextflow.enable.dsl=2
def say_hello_bash(){

    text = """bash ${workDir}/../modules/bash/bash_hw.sh""".execute().text
    return text
}


process bash_hw{
    output: val(message)
    script:
    message = say_hello_bash().strip("\n")
    """
    """
}


