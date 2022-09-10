// ==UserScript==
// @name         GitHub Clone Button
// @namespace    https://github.com/bennett-sh
// @version      1.0
// @description  Adds a 'Clone'-button to GitHub
// @author       BSh
// @match        https://github.com/*
// @icon         https://www.google.com/s2/favicons?sz=64&domain=github.com
// @grant        none
// ==/UserScript==

const $ = s => document.querySelector(s)

function update(path) {
    // Basic check if it's not a repo
    if(!/\/[a-z0-9\-\_]*\/[a-z0-9\-\_]*/i.test(path)) return
    
    if($(".file-navigation > .clone-button")) return

    // Add clone button
    $(".file-navigation")?.insertAdjacentHTML('beforeend', `<a class="btn btn-primary ml-2 d-none d-md-block clone-button" data-hotkey="c" href="git-clone://github.com${path}">Clone</a>`)
    
    // Make 'Code'-button non-primary
    $("[data-action=\"toggle:get-repo#onDetailsToggle\"] > .btn-primary")?.classList.remove('btn-primary')
}

setInterval(() => update(window.location.pathname, 1000)
