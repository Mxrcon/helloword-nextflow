nextflow.enable.dsl=2
def say_hello_ruby(){

    text = """ruby ${workDir}/../modules/ruby/ruby_hw.rb""".execute().text
    return text
}


process ruby_hw{
    output: val(message)
    script:
    message = say_hello_ruby().strip("\n")
    """
    """
}


