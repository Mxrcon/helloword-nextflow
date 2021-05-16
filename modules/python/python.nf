nextflow.enable.dsl=2
def say_hello_python(){

    text = """python ${workDir}/../modules/python/python_hw.py""".execute().text
    return text
}


process python_hw{
    output: val(message)
    script:
    message = say_hello_python().strip("\n")
    """
    """
}


