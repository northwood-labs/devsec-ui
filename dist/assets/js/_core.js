var t=require("firecracker.js/dist/index");function r(e){return e&&e.__esModule?e.default:e}const o=r(t).DQuery,n=r(t).Delegate,l=o("#mobile-menu-button svg");o(document.body).on("click",e=>{n("#mobile-menu-button",()=>{l.forEach(d=>{d.toggle("hidden"),d.toggle("block")}),o("#mobile-menu")[0].toggle("hidden")})(e),n("#chapter-toggle",()=>{document.querySelectorAll("details").forEach(d=>{d.open=!d.open})})(e)});

//# sourceMappingURL=_core.js.map
