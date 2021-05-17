nextflow.enable.dsl=2
def compile_hello_cpp(){
    """g++ ${workDir}/../modules/cpp/cpp_hw.cpp -o modules/cpp/cpp_hw""".execute()
}

def say_hello_cpp(){
    text = """${workDir}/../modules/cpp/cpp_hw""".execute().text
    return text
}


process cpp_hw{
    output: val(message)
    script:
    compile_hello_cpp()
    message = say_hello_cpp().strip("\n")
    """
    """
}


