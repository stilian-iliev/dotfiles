// ==UserScript==
// @name     Twitch 7TV Reward Message Blocker
// @version  1
// @grant    none
// @include  https://www.twitch.tv/*
// @license MIT
// @description Hides the channel point redemption message on twitch if you have the 7tv extension installed
// @namespace https://greasyfork.org/users/990886
// ==/UserScript==

(function() {
    'use strict';

    const observer = new MutationObserver(mutations => {
        for (const mutation of mutations) {
            for (const node of mutation.addedNodes) {
                if (node.nodeType === Node.ELEMENT_NODE) {
                    const rewardMessageContainer = node.querySelector('.seventv-reward-message-container.seventv-highlight');
                    if (rewardMessageContainer) {
                        let parent = rewardMessageContainer;
                        for (let i = 0; i < 2; i++) {
                            parent = parent.parentElement;
                            if (parent) {
                                parent.style.display = 'none';
                            } else {
                                break;
                            }
                        }
                    }
                }
            }
        }
    });

    observer.observe(document.documentElement, {
        childList: true,
        subtree: true
    });
})();