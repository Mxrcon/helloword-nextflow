nextflow.enable.dsl=2
def compile_hello_rust(){
    """rustc ${workDir}/../modules/rust/rust_hw.rs -o modules/rust/rust_hw""".execute()
}

def say_hello_rust(){
    text = """${workDir}/../modules/rust/rust_hw""".execute().text
    return text
}


process rust_hw{
    output: val(message)
    script:
    compile_hello_rust()
    message = say_hello_rust().strip("\n")
    """
    """
}

