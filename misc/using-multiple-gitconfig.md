**Maintainer:** Chirag Shah

**Who is it for:**
Suppose I have a github id created with my personal email address. For example: `email@personal.com`
This is stored in `~/.gitconfig`.
Certain clients want you to create a separate github id with email belonging to their organization. For example: `email@client.com`
In such cases, when you create+push a commit, that commit is mapped to you personal email address.

Using the following configuration, you can conditionally use different `.gitconfig` files.

In the below example, whenever I switch path to `~/Workspace/bigbinary/vineti/`, it uses the `.gitconfig` while stored at `~/Workspace/bigbinary/vineti/.gitconfig`
For other cases, it falls back to the default.

```
$ cat ~/.gitconfig
[user]
    name = chiragshah
    email = chirag@bigbinary.com
[includeIf "gitdir:~/Workspace/bigbinary/vineti/"]
    path = ~/Workspace/bigbinary/vineti/.gitconfig
[alias]
    co = checkout
    st = status
    
$ cat ~/Workspace/bigbinary/vineti/.gitconfig
[user]
    name = chirag-vineti
    email = chirag.shah@vineti.com
[alias]
    co = checkout
    st = status
```
