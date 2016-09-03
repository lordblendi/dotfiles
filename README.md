todo


# PS1
<http://www.cyberciti.biz/faq/bash-shell-change-the-color-of-my-shell-prompt-under-linux-or-unix/>

```
if [ "$color_prompt" = yes ]; then
    PS1='\[$(tput bold)\]\[$(tput setaf 3)\][\t \u: \W]\$ \[$(tput sgr0)\]'
else
    PS1='\[$(tput bold)\][\t \u: \W]\$ \[$(tput sgr0)\]'
```

- bold font [$(tput bold)]
- yellow color [$(tput setaf 3)]
- reset everything: [$(tput sgr0)]'
- host @\h:
- full directory \w
- last directory \W

<http://bneijt.nl/blog/post/add-a-timestamp-to-your-bash-prompt/>
