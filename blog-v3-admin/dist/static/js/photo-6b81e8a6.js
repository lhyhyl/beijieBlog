import{bo as e}from"./auth-0313e5d1.js";const s=t=>e.request("post","/api/photoAlbum/add",{data:t}),r=t=>e.request("put","/api/photoAlbum/update",{data:t}),u=t=>e.request("post","/api/photoAlbum",{data:t}),p=t=>e.request("delete","/api/photoAlbum/delete/"+t,{}),a=t=>e.request("post","/api/photo/add",{data:t}),d=t=>e.request("post","/api/photo/getPhotoListByAlbumId",{data:t}),n=t=>e.request("put","/api/photo/revert",{data:t}),l=t=>e.request("put","/api/photo/delete",{data:t});export{s as a,d as b,l as c,p as d,a as e,u as g,n as r,r as u};
