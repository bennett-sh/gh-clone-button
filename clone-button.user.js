// ==UserScript==
// @name         Clone Button
// @namespace    https://github.com/bennett-sh
// @version      1.1
// @description  Adds a 'Clone'-button to GitHub
// @author       BSh
// @match        https://github.com/*
// @icon         https://www.google.com/s2/favicons?sz=64&domain=github.com
// @grant        none
// ==/UserScript==

const $ = s => document.querySelector(s)

function update(path) {
    if(!/\/[a-z0-9\-\_]*\/[a-z0-9\-\_]*/i.test(path)) return

    if($(".jxTzTd > .clone-button")) return

    $(".jxTzTd")?.insertAdjacentHTML('beforeend', `<a class="btn btn-primary ml-2 d-none d-md-block clone-button" data-hotkey="c" href="git-clone://https://github.com${path}">Clone</a>`)

    const style = document.createElement('style')
    style.textContent = `
    .jxTzTd button:has(+.izFOf) {
        color: var(--button-default-fgColor-rest,var(--color-btn-text,#c9d1d9));
        background-color: var(--button-default-bgColor-rest,var(--color-btn-bg,#21262d));
    }
    `
    document.body.append(style)
}


function main() {
    'use strict';

    update(window.location.pathname)
}

setInterval(main, 1000)
