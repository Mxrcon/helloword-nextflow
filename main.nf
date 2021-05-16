nextflow.enable.dsl=2

include{python_hw} from "./modules/python/python.nf" 
include{ruby_hw} from "./modules/ruby/ruby.nf"
include{nextflow_hw} from "./modules/nextflow/nextflow.nf"
workflow{

    python_hw()
    ruby_hw()
    nextflow_hw()

    python_hw.out.view()
    ruby_hw.out.view()
    nextflow_hw.out.view()
}
