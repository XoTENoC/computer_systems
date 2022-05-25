#include <string>

#include "VMTranslator.h"

using namespace std;

/** Generate Hack Assembly code for a VM push operation assessed in Practical Assignment 6 */
string VMTranslator::vm_push(string segment, int offset){
    string segSetup = "@" + to_string(offset) + "\nD=A\n";
    string segOffset = "A=A+D\nD=M\n";
    string loadHeap = "A=M\n";
    string code = "@SP\nA=M\nM=D\n@SP\nM=M+1\n";


    code.clear();
    if (segment == "constant")
    {
        break;
    }
    else if (segment == "this")
    {
        segSetup = "@THIS\n";
        segSetup += loadHeap + segOffset;
    }
    else if (segment == "that")
    {
        segSetup = "@THAT\n";
        segSetup += loadHeap + segOffset;
    }
    else if (segment == "pointer")
    {
        if (offset == 0)
        {
            segSetup = "@THIS\n";
        }
        else 
        {
            segSetup = "@THAT\n";
        }
        segSetup += "D=M";
    }
    else if (segment == "argument")
    {
        segSetup = "@ARG\n";
        segSetup += loadHeap + segOffset;
    }
    else if (segment == "local")
    {
        segSetup = "@LCL\n";
        segSetup += loadHeap + segOffset;
    }
    else if (segment == "temp")
    {
        segSetup = "@5\n";
        segSetup += segOffset;
    }
    else if (segment == "static")
    {
        segSetup = "@16\n";
        segSetup += segOffset;
    }

    return segSetup + code;
}

/** Generate Hack Assembly code for a VM pop operation assessed in Practical Assignment 6 */
string VMTranslator::vm_pop(string segment, int offset){    
    return "";
}

/** Generate Hack Assembly code for a VM add operation assessed in Practical Assignment 6 */
string VMTranslator::vm_add(){
    return "";
}

/** Generate Hack Assembly code for a VM sub operation assessed in Practical Assignment 6 */
string VMTranslator::vm_sub(){
    return "";
}

/** Generate Hack Assembly code for a VM neg operation assessed in Practical Assignment 6 */
string VMTranslator::vm_neg(){
    return "";
}

/** Generate Hack Assembly code for a VM eq operation assessed in Practical Assignment 6 */
string VMTranslator::vm_eq(){
    return "";
}

/** Generate Hack Assembly code for a VM gt operation assessed in Practical Assignment 6 */
string VMTranslator::vm_gt(){
    return "";
}

/** Generate Hack Assembly code for a VM lt operation assessed in Practical Assignment 6 */
string VMTranslator::vm_lt(){
    return "";
}

/** Generate Hack Assembly code for a VM and operation assessed in Practical Assignment 6 */
string VMTranslator::vm_and(){
    return "";
}

/** Generate Hack Assembly code for a VM or operation assessed in Practical Assignment 6 */
string VMTranslator::vm_or(){
    return "";
}

/** Generate Hack Assembly code for a VM not operation assessed in Practical Assignment 6 */
string VMTranslator::vm_not(){
    return "";
}

/** Generate Hack Assembly code for a VM label operation assessed in Practical Assignment 7 */
string VMTranslator::vm_label(string label){
    return "";
}

/** Generate Hack Assembly code for a VM goto operation assessed in Practical Assignment 7 */
string VMTranslator::vm_goto(string label){
    return "";
}

/** Generate Hack Assembly code for a VM if-goto operation assessed in Practical Assignment 7 */
string VMTranslator::vm_if(string label){
    return "";
}

/** Generate Hack Assembly code for a VM function operation assessed in Practical Assignment 7 */
string VMTranslator::vm_function(string function_name, int n_vars){
    return "";
}

/** Generate Hack Assembly code for a VM call operation assessed in Practical Assignment 7 */
string VMTranslator::vm_call(string function_name, int n_args){
    return "";
}

/** Generate Hack Assembly code for a VM return operation assessed in Practical Assignment 7 */
string VMTranslator::vm_return(){
    return "";
}