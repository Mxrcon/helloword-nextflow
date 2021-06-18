nextflow.enable.dsl=2

process python_hw{
    tag "python"

    script:
    """
    python ${baseDir}/bin/python_hw.py
    """
}
