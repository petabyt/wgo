# Wgo
Golang with errors treated as warnings.  
```
daniel@danspc:~$ cat main.go
package main

import (
	"fmt"
	"encoding/json"
)

func main() {
        fmt.Println("Hello, World")
}
daniel@danspc:~$ wgo run main.go
# command-line-arguments
imported and not used: "encoding/json"
Hello, World
daniel@danspc:~$
```

# Why?
Wgo is meant to be a tool to exist alongside the original  
Go compiler. When "xxx unused" error occurs, and you just  
want to see the code working before you comment a line out,  
type "ctrl+a", "w", and enter.  

Many people abandon Go entirely simply because the forced  
errors. Wgo is an attempt to make things a little bit more  
bearable for these type of people.  

# Building
Pull the latest source, apply the patch, and compile into /bin/wgo.  
`make all bin run`  

You may need to undefine GOROOT so that Wgo won't  
use the regular Go runtime code.  
