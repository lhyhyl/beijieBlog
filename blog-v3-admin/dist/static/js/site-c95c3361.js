import{bo as d,bd as w,bp as y,bq as C}from"./auth-0313e5d1.js";function U(t){const a=Array.isArray(t)?[]:{};if(t&&typeof t=="object")for(const e in t)Object.prototype.hasOwnProperty.call(t,e)&&(t[e]&&typeof t[e]=="object"?a[e]=U(t[e]):a[e]=t[e]);return a}const D=(t,a=800,e=1)=>new Promise(o=>{const n=new FileReader;n.readAsDataURL(t),n.onload=i=>{const r=new Image;r.src=i.target.result,r.onload=()=>{const s=document.createElement("canvas"),A=s.getContext("2d");let l=r.width,p=r.height;l=r.width,p=r.height,s.width=l,s.height=p,A.drawImage(r,0,0,l,p);let m=s.toDataURL(t.type,e);Math.round(m.length)/1024>a&&(e-=.2,m=s.toDataURL(t.type,e));const u=m.split(",");let g=u[0].match(/:(.*?);/)[1];const h=atob(u[1]);let c=h.length;const f=new Uint8Array(c);for(;c--;)f[c]=h.charCodeAt(c);g=t.type,o(new Blob([f],{type:g}))}}}),k=()=>d.request("get","/api/config",{}),_=()=>d.request("get","/gitee/contribution_timeline?url=%2Fmrzym%2Fcontribution_timeline&scope=my&day=&start_date=&end_date=&year=&limit=180&prev_id=&_=1683426798995"),z=t=>d.request("post","/api/config/update",{data:t}),F=()=>d.request("put","/api/config/addView",{}),L=async t=>{let a;if(t.raw.size/1024>820){const n=await D(t.raw);if(n)a=n;else{w.error("图片上传失败");return}}else a=t.raw;const e=new FormData;e.append("file",a);const o=y();return new Promise(n=>{C({method:"post",url:"/api/upload/img",data:e,headers:{"Content-Type":"multipart/form-data",Authorization:o.token}}).then(i=>{n(i.data)})})},R=async t=>{let a;if(t.size/1024>820){const n=await D(t);if(n)a=n;else{w.error("图片上传失败");return}}else a=t;const e=new FormData;e.append("file",a);const o=y();return new Promise(n=>{C({method:"post",url:"/api/upload/img",data:e,headers:{"Content-Type":"multipart/form-data",Authorization:o.token}}).then(i=>{n(i.data)})})};export{F as a,D as b,k as c,U as d,_ as g,L as i,R as m,z as u};