import{bD as L,bE as M,bF as d,bG as i,bH as j,bm as q,bI as x}from"./auth-0313e5d1.js";import{e as m}from"./mitt-7f99bbc0.js";import{u as J,d as K}from"./vue-router-0b23dc16.js";import{u as Q}from"./app-c0ae8c6f.js";import{a as e}from"./runtime-core.esm-bundler-185e3605.js";const b="当前路由配置不正确，请检查配置";function _(){var p,g;const v=K(),u=Q(),S=J().options.routes,{wholeMenus:k}=L(M()),I=((p=d())==null?void 0:p.TooltipEffect)??"light",f=e(()=>{var t;return(t=i())==null?void 0:t.username}),R=e(()=>{var t;return(t=i())==null?void 0:t.getNickName}),T=e(()=>{var t;return(t=i())==null?void 0:t.getAvatar}),y=(g=i())==null?void 0:g.getUserId,H=e(()=>f.value?{marginRight:"10px"}:""),C=e(()=>!u.getSidebarStatus),N=e(()=>u.getDevice),{$storage:c,$config:P}=j(),A=e(()=>{var t;return(t=c==null?void 0:c.layout)==null?void 0:t.layout}),E=e(()=>P.Title);function O(t){const o=d().Title;o?document.title=`${t.title} | ${o}`:document.title=t.title}function z(){i().logOut()}function B(){q.push("/home")}function D(){m.emit("openPanel")}function U(){u.toggleSideBar()}function $(t){t==null||t.handleResize()}function w(t){var s;if(!t.children)return console.error(b);const o=/^http(s?):\/\//,r=(s=t.children[0])==null?void 0:s.path;return o.test(r)?t.path+"/"+r:r}function F(t,o){if(k.value.length===0||G(t))return;let r="";const s=t.lastIndexOf("/");s>0&&(r=t.slice(0,s));function a(l,h){return h?h.map(n=>{n.path===l?n.redirect?a(n.redirect,n.children):m.emit("changLayoutRoute",{indexPath:l,parentPath:r}):n.children&&a(l,n.children)}):console.error(b)}a(t,o)}function G(t){return x.includes(t)}return{route:v,title:E,device:N,layout:A,logout:z,routers:S,$storage:c,backHome:B,onPanel:D,changeTitle:O,toggleSideBar:U,menuSelect:F,handleResize:$,resolvePath:w,isCollapse:C,pureApp:u,username:f,nickName:R,avatar:T,userId:y,avatarsStyle:H,tooltipEffect:I}}export{_ as u};
