
@echo off

if not exist build mkdir build

set SourceFiles=

set CompileFlags=/nologo /FC /Zi
set LinkFlags=/opt:icf /opt:ref

pushd build
call cl %CompileFlags% /Fe:out.exe %SourceFiles% /link %LinkFlags%
popd