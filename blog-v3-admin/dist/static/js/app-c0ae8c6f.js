import{bB as o,bJ as i,bF as a,bK as r,bC as u}from"./auth-0313e5d1.js";const d=o({id:"pure-app",state:()=>{var e,t;return{sidebar:{opened:((e=i().getItem("responsive-layout"))==null?void 0:e.sidebarStatus)??a().SidebarStatus,withoutAnimation:!1,isClickCollapse:!1},layout:((t=i().getItem("responsive-layout"))==null?void 0:t.layout)??a().Layout,device:r()?"mobile":"desktop"}},getters:{getSidebarStatus(){return this.sidebar.opened},getDevice(){return this.device}},actions:{TOGGLE_SIDEBAR(e,t){const s=i().getItem("responsive-layout");e&&t?(this.sidebar.withoutAnimation=!0,this.sidebar.opened=!0,s.sidebarStatus=!0):!e&&t?(this.sidebar.withoutAnimation=!0,this.sidebar.opened=!1,s.sidebarStatus=!1):!e&&!t&&(this.sidebar.withoutAnimation=!1,this.sidebar.opened=!this.sidebar.opened,this.sidebar.isClickCollapse=!this.sidebar.opened,s.sidebarStatus=this.sidebar.opened),i().setItem("responsive-layout",s)},async toggleSideBar(e,t){await this.TOGGLE_SIDEBAR(e,t)},toggleDevice(e){this.device=e},setLayout(e){this.layout=e}}});function b(){return d(u)}export{b as u};
