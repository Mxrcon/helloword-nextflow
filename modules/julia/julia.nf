nextflow.enable.dsl=2
def say_hello_julia(){

    text = """julia ${workDir}/../modules/julia/julia_hw.jl""".execute().text
    return text
}


process julia_hw{
    output: val(message)
    script:
    message = say_hello_julia().strip("\n")
    """
    """
}


