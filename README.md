# Wgo
Golang with errors treated as warnings.  
```
daniel@cloudshell:~$ cat main.go
package main

import (
	"fmt"
	"encoding/json"
)

func main() {
        fmt.Println("Hello, World")
}
daniel@cloudshell:~$ wgo run main.go
# command-line-arguments
imported and not used: "encoding/json"
Hello, World
daniel@cloudshell:~$
```

# Why?
Mainly for prototyping and quick development. Errors  
slow down development, warnings allow for smooth rapid  
prototyping.

# Setup
You may need to undefine GOROOT so that Wgo won't  
use the regular Go runtime code.  
```
make
```

# Building
Pull the latest source, apply the patch, and compile into /bin/wgo.  
`make all bin run`  
