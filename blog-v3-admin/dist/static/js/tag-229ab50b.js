import{bo as e}from"./auth-0313e5d1.js";const s=t=>e.request("post","/api/tag/getTagList",{data:t}),r=t=>e.request("post","/api/tag/add",{data:t}),g=t=>e.request("put","/api/tag/update",{data:t}),i=t=>e.request("post","/api/tag/delete",{data:t}),o=()=>e.request("get","/api/tag/getTagDictionary",{});export{r as a,s as b,i as d,g as e,o as g};