#ifndef VMTRANSLATOR_H
#define VMTRANSLATOR_H

#include <string>
#include <sstream>
#include <stdexcept>
#include <regex>
#include <cstdint>

using namespace std;

class VMTranslator {

    public:

        /** Practical Assignment 6 methods */
        string vm_push(string segment, int offset);
        string vm_pop(string segment, int offset);
        string vm_add();
        string vm_sub();
        string vm_neg();
        string vm_eq();
        string vm_gt();
        string vm_lt();
        string vm_and();
        string vm_or();
        string vm_not();

        /** Practical Assignment 7 methods */
        string vm_label(string label);
        string vm_goto(string label);
        string vm_if(string label);
        string vm_function(string function_name, int n_vars);
        string vm_call(string function_name, int n_args);
        string vm_return();

        /** End the File */
        string vm_end();
    
    protected:
        void writeToScreen(string code);
        string nameReg(string segment, int offset);
        stringstream streamASM;
        
};

#endif /* VMTRANSLATOR_H */