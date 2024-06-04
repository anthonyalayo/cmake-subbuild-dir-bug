This repository is to demonstrate the issue in:

https://discourse.cmake.org/t/cleaning-external-project-fetch-content-subbuild-dir-directories/9834

To reproduce,
1. `git clone https://github.com/anthonyalayo/cmake-subbuild-dir-bug.git`
2. `cmake -B build`
3. `git checkout example-branch`
4. `cmake -B build`
5. `git checkout main`
6. `cmake -B build`

Although not necessary for reproduction, you can build the binary via
`cmake --build build --target main`.