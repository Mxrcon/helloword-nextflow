nextflow.enable.dsl=2

//include the modules
include{python_hw} from "./modules/python/python.nf" 
include{ruby_hw} from "./modules/ruby/ruby.nf"
include{nextflow_hw} from "./modules/nextflow/nextflow.nf"
include{bash_hw} from "./modules/bash/bash.nf"

workflow{
    // Execute the programs
    python_hw()
    ruby_hw()
    nextflow_hw()
    bash_hw()


    // show the messages from the programs
    python_hw.out.view()
    ruby_hw.out.view()
    nextflow_hw.out.view()
    bash_hw.out.view()
}
