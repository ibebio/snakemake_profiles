#!/bin/bash
# properties = {properties}
if [[ -f ~/.bashrc &&  $(grep -c "__conda_setup=" ~/.bashrc) -gt 0 && $(grep -c "unset __conda_setup" ~/.bashrc) -gt 0 ]]; then
   echo "Sourcing .bashrc" 1>&2
   . ~/.bashrc
else
   echo "Exporting conda PATH" 1>&2
   export PATH=/ebio/abt6_projects9/abt6_software/bin/miniconda3/bin/:$PATH
fi

{exec_job}
