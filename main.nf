nextflow.enable.dsl=2

//include the modules
include{python_hw} from "./modules/python/python.nf" 
include{ruby_hw} from "./modules/ruby/ruby.nf"
include{nextflow_hw} from "./modules/nextflow/nextflow.nf"
include{bash_hw} from "./modules/bash/bash.nf"
include{julia_hw} from "./modules/julia/julia.nf"
include{c_hw} from "./modules/c/c.nf"
include{cpp_hw} from "./modules/cpp/cpp.nf"
include{rust_hw} from "./modules/rust/rust.nf"

workflow{
    // Execute the programs
    python_hw()
    ruby_hw()
    nextflow_hw()
    bash_hw()
    julia_hw()
    c_hw()
    cpp_hw()
    rust_hw()

    // show the messages from the programs
    python_hw.out.view()
    ruby_hw.out.view()
    nextflow_hw.out.view()
    bash_hw.out.view()
    julia_hw.out.view()
    c_hw.out.view()
    cpp_hw.out.view()
    rust_hw.out.view()
}
