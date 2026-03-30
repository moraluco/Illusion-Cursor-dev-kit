# PythonScript

## Inheritance

PythonScript

## PYTHON \| EXECUTION

ExecutePythonCommandEx

### static bool PythonScript::ExecutePythonCommandEx

```
static bool PythonScript::ExecutePythonCommandEx(
```

FString 	PythonCommand,

FString& 	CommandResult,

TArray<FPythonLogOutputEntry>& 	LogOutput,

EPythonCommandExecutionMode 	ExecutionMode	 = 	EPythonCommandExecutionMode :: ExecuteFile,

EPythonFileExecutionScope 	FileExecutionScope	 = 	EPythonFileExecutionScope :: Private

)

### Execute the given Python command.

```
Execute the given Python command.
```

**Parameters**

PythonCommand
FString

The command to run. This may be literal Python code, or a file (with optional arguments) that you want to run.

CommandResult
FString&

The result of running the command. On success, for EvaluateStatement mode this will be the actual result of running the command, and will be None in all other cases. On failure, this will be the error information (typically a Python exception trace).

LogOutput
TArray<FPythonLogOutputEntry>&

The log output captured while running the command.

ExecutionMode
EPythonCommandExecutionMode

Controls the mode used to execute the command.

FileExecutionScope
EPythonFileExecutionScope

Controls the scope used when executing Python files.

**Returns**

true if the command ran successfully, false if there were errors.

IsPythonAvailable
static bool PythonScript::IsPythonAvailable()

Check to see whether Python support is available in the current build.

ExecutePythonCommand
static bool PythonScript::ExecutePythonCommand(
FString 	PythonCommand
	)

Execute the given Python command.

**Parameters**

PythonCommand
FString

The command to run. This may be literal Python code, or a file (with optional arguments) that you want to run.

**Returns**

true if the command ran successfully, false if there were errors (the output log will show the errors).
