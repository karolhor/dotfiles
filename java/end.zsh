#!/bin/sh

# Lazy load jenv
if type jenv > /dev/null; then
    export PATH="${JENV_ROOT}/bin:${JENV_ROOT}/shims:${PATH}"
    function jenv() {
        unset -f jenv
        eval "$(command jenv init -)"

        [[ ! -a ${JENV_ROOT}/plugins/export ]] && jenv enable-plugin export

        jenv $@
    }
fi