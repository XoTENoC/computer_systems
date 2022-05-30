#include <string>
#include <sstream>
#include <stdexcept>
#include <regex>
#include <cstdint>

#include "VMTranslator.h"

using namespace std;

void VMTranslator::writeto(string asmCode){
    if(asmCode.find("(") == string::npos)
    {
        streamASM << "\t";
    }
    streamASM << asmCode << endl;
}

string VMTranslator::nameReg(string segment, int offset){
    if (segment == "this")
    {
        return "THIS";
    }
    else if (segment == "that")
    {
        return "THAT";
    }
    else if (segment == "pointer")
    {
        return "R" + to_string(3 + offset);
    }
    else if (segment == "argument")
    {
        return "ARG";
    }
    else if (segment == "local")
    {
        return "LCL";
    }
    else if (segment == "temp")
    {
        return "R" + to_string(5 + offset);
    }
    else if (segment == "static")
    {
        return "16";
    }
    return "Error";
}

/** Generate Hack Assembly code for a VM push operation assessed in Practical Assignment 6 */
string VMTranslator::vm_push(string segment, int offset){;

    streamASM.str(string());
    string index = to_string(offset);
    string seg = nameReg(segment, offset);

    if (segment == "constant")
    {
        writeto("@"+index);
        writeto("D=A");
        writeto("@SP");
        writeto("A=M");
        writeto("M=D");
        writeto("@SP");
        writeto("M=M+1");
    }
    else if (seg == "Error")
    {
        throw runtime_error("VM Push(): invalid Segment");
    }
    else
    {
        writeto("@" + seg);
        writeto("D=M");
        writeto("@" + index);
        writeto("A=D+A");
        writeto("D=M");
        writeto("@SP");
        writeto("A=M");
        writeto("M=D");
        writeto("@SP");
        writeto("M=M+1");
    }

    return streamASM.str() + "\n";
}

/** Generate Hack Assembly code for a VM pop operation assessed in Practical Assignment 6 */
string VMTranslator::vm_pop(string segment, int offset){
    
    streamASM.str(string());
    string index = to_string(offset);
    string seg = nameReg(segment, offset);
    
    if ( segment == "constant")
    {
        throw runtime_error("VM pop(): can't pop constant");
    }
    else if ( seg == "Error")
    {
        throw runtime_error("VM pop(): invalid Segment");
    }
    else
    {
        writeto("@" + seg);
        writeto("D=M");
        writeto("@" + index);
        writeto("D=D+A");
        writeto("@R13");
        writeto("M=D");
        writeto("@SP");
        writeto("AM=M-1");
        writeto("D=M");
        writeto("@R13");
        writeto("A=M");
        writeto("M=D");
    }

    return streamASM.str() + "\n";
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