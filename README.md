# 6.172

https://ocw.mit.edu/courses/6-172-performance-engineering-of-software-systems-fall-2018/pages/calendar/

```bash
multipass launch \
    --name dev \
    --memory 4G 
    --disk 10G \
    --cloud-init cloud-init.yaml \
    --mount .:/home/dev

multipass shell dev
```