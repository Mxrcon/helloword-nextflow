nextflow.enable.dsl=2
def compile_hello_c(){
    """gcc ${workDir}/../modules/c/c_hw.c -o modules/c/c_hw""".execute()
}

def say_hello_c(){
    text = """${workDir}/../modules/c/c_hw""".execute().text
    return text
}


process c_hw{
    output: val(message)
    script:
    compile_hello_c()
    message = say_hello_c().strip("\n")
    """
    """
}


