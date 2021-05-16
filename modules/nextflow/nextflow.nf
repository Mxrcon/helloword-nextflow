nextflow.enable.dsl=2

process nextflow_hw{
    output: val(message)
    script:
    message = "hello word from nextflow!"
    """
    """
}


