<hr />

# This project is no longer maintained

I'm sorry but I do not have the bandwidth to maintain this tool. Please do not send issues or PRs. Thank you.
<hr />

# gcvis

Visualise Go program gctrace data in real time

Note: GC timing graphs are only supported for go 1.6

## Usage

Building the repository:

Change the directory

```bash
cd govisualizer
```

Perform go build

```bash
go build -o gcvis *.go
```

Running it using a log file:

gc-new is a sample log file in the repository. You can further use your own one

```bash
cat gc-new | ./gcvis  
```

Running it directly:

```bash
env GOMAXPROCS=4 gcvis godoc -index -http=:6060
```

Adding the `gctrace` flag yourself:

```bash
GODEBUG=gctrace=1 godoc -index -http=:6060 2>&1 | gcvis
```

Or from a log file:

```bash
GODEBUG=gctrace=1 godoc -index -http=:6060 2> stderr.log
cat stderr.log | gcvis
```

Starting the server without automatically opening a browser:

```bash
gcvis -o=false godoc -index -http=:6060
```
