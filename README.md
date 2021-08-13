# alpine-docker-engine-conflict

Test cases for conflicts between NodeJS Alpine `gyp` and Docker Engine.  
I ran into this issue while updating an image from `node:lts-alpine3.13` to `node:lts-alpine3.14`

I have no idea what could be causing the underlying issue, but these are the combinations that I've tried:

| alpine | docker engine | working? |
|--------|---------------|----------|
| 3.13   | 20.10.2       | true     |
| 3.13   | 20.10.6       | true     |
| 3.14   | 20.10.2       | false    |
| 3.14   | 20.10.6       | true     |
