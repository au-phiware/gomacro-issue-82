## Description of problem

This project attempts demostrates using gomacro to generate code within a
private module that can make reference to itself and other public modules.

My specific use case involves the github.com/golang/protobuf/descriptor package,
which decodes information in the current module that has been generated earily
by protoc (see [Protocol Buffer Basics:
Go](https://developers.google.com/protocol-buffers/docs/gotutorial)).

This project contains the bare minimum to demostrate this objective.

## Steps to reproduce

This project contains a Makefile, running `make` is all you need to do.

## Expected output

Gomacro should write the following to `gen.go`:

```
// -------------------------------------------------------------
// DO NOT EDIT! this file was generated automatically by gomacro
// Any change will be lost when the file is re-generated
// -------------------------------------------------------------

package tutorial

func Gen() string { return "Person" }
```

## Actual output

Gomacro produces the following messages:

```
gomacro -w gen.gomacro
// debug: looking for package "github.com/golang/protobuf/descriptor" ...
// debug: compiling "/home/corin/go/src/gomacro.imports/github.com/golang/protobuf/descriptor/descriptor.go" ...
go: finding github.com/golang/protobuf/descriptor latest
// debug: looking for package "github.com/au-phiware/gomacro-issue-82" ...
// debug: compiling "/home/corin/go/src/gomacro.imports/github.com/au-phiware/gomacro-issue-82/gomacro-issue-82.go" ...
go: finding github.com/au-phiware/gomacro-issue-82 latest
go: finding github.com/golang/protobuf/proto latest
go: finding github.com/golang/protobuf/ptypes/timestamp latest
go: finding github.com/golang/protobuf/ptypes latest
gen.gomacro:6:35: package tutorial "github.com/au-phiware/gomacro-issue-82" has no symbol Person
```

And writes the following to `gen.go`:

```
// -------------------------------------------------------------
// DO NOT EDIT! this file was generated automatically by gomacro
// Any change will be lost when the file is re-generated
// -------------------------------------------------------------

package tutorial

func Gen() string { return make }
```

Furthermore it appears to correctly produce the gomacro.imports plugin:

```
// this file was generated by gomacro command: import "github.com/au-phiware/gomacro-issue-82"
// DO NOT EDIT! Any change will be lost when the file is re-generated

package main

import (
	. "reflect"
	gomacro_issue_82 "github.com/au-phiware/gomacro-issue-82"
)

type Package = struct {
	Name     string
	Binds    map[string]Value
	Types    map[string]Type
	Proxies  map[string]Type
	Untypeds map[string]string
	Wrappers map[string][]string
}

var Packages = make(map[string]Package)

func main() {
}


// reflection: allow interpreted code to import "github.com/au-phiware/gomacro-issue-82"
func init() {
	Packages["github.com/au-phiware/gomacro-issue-82"] = Package{
	Name: "tutorial",
	Binds: map[string]Value{
		"Person_HOME":	ValueOf(gomacro_issue_82.Person_HOME),
		"Person_MOBILE":	ValueOf(gomacro_issue_82.Person_MOBILE),
		"Person_PhoneType_name":	ValueOf(&gomacro_issue_82.Person_PhoneType_name).Elem(),
		"Person_PhoneType_value":	ValueOf(&gomacro_issue_82.Person_PhoneType_value).Elem(),
		"Person_WORK":	ValueOf(gomacro_issue_82.Person_WORK),
	}, Types: map[string]Type{
		"AddressBook":	TypeOf((*gomacro_issue_82.AddressBook)(nil)).Elem(),
		"Person":	TypeOf((*gomacro_issue_82.Person)(nil)).Elem(),
		"Person_PhoneNumber":	TypeOf((*gomacro_issue_82.Person_PhoneNumber)(nil)).Elem(),
		"Person_PhoneType":	TypeOf((*gomacro_issue_82.Person_PhoneType)(nil)).Elem(),
	}, 
	}
}
```
