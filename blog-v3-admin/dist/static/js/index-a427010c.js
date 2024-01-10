import{bA as L}from"./auth-0313e5d1.js";import{d as M,e as Q,a as X,b as Y}from"./tag-229ab50b.js";import{J as g,r as y,o as Z,h as E,v as ee,x as t,a3 as r,j as ae,D as o,u as e,e as N,B as c,ba as te,b9 as oe,l as ne}from"./runtime-core.esm-bundler-185e3605.js";import{u as C}from"./hooks-e73aa1dd.js";import{d as le}from"./search-cc37b371.js";import{d as ie}from"./refresh-04c5340d.js";import{d as W}from"./delete-2f3d40d2.js";import{d as se}from"./edit-pen-37b5ced2.js";import{d as re}from"./circle-plus-a2aad0eb.js";import{_ as ce}from"./_plugin-vue_export-helper-c27b6911.js";import"./vue-router-0b23dc16.js";import"./index-6d140db2.js";function de(){const s=g({current:1,size:10,tag_name:""}),x=g({...s}),u=y(!1),_=y([]),b=y(!1),z=y("small"),v=y([]),B=[{type:"selection",align:"left",width:30},{label:"序号",type:"index",width:55},{label:"标签",prop:"tag_name",minWidth:130},{label:"创建日期",prop:"createdAt"},{label:"修改日期",prop:"updatedAt"},{label:"操作",fixed:"right",width:120,slot:"operation"}],n=g({id:"",tag_name:""}),S=g({...n}),F=g({tag_name:[{required:!0,message:"请输入标签名称",trigger:"blur"}]}),f=g({pageSize:10,currentPage:1,pageSizes:[10,15,20],total:0,align:"right",background:!0,small:!0}),k=g({text:"正在加载第1页...",viewBox:"-10, -10, 50, 50",spinner:`
        <path class="path" d="
          M 30 15
          L 28 17
          M 25.61 25.61
          A 15 15, 0, 0, 1, 15 30
          A 15 15, 0, 1, 1, 27.99 7.5
          L 15 15
        " style="stroke-width: 4px; fill: rgba(0, 0, 0, 0)"/>
      `});function V(){d()}const I=()=>{Object.assign(s,x),V()},T=a=>{a&&a.resetFields()};function j(a){v.value=a}function A(a){f.small=a}function $(a){s.size=a,d()}async function O(a){typeof a=="number"&&(k.text=`正在加载第${a}页...`,s.current=a,b.value=!0,d())}async function P(a){u.value=!0,a&&Object.assign(n,a)}async function R(a){(await M({tagIdList:[a.id]})).code==0&&(L(`删除标签${a.tag_name}成功`,{type:"success"}),d())}async function U(){if(v.value.length){const a=v.value.map(m=>m.id);(await M({tagIdList:a})).code==0&&(L("批量删除标签成功",{type:"success"}),d())}else L("请先选择标签",{type:"warning"})}function l(){Object.assign(n,S),u.value=!1}async function w(a){a&&await a.validate(async h=>{if(h){let m;n.id?m=await Q(n):m=await X(n),m.code==0&&(L(`${n.id?"修改":"新增"}成功`,{type:"success"}),u.value=!1,T(a),Object.assign(n,S),d())}})}async function d(){const a=await Y(s);a.code==0&&(_.value=a.result.list,f.total=a.result.total),b.value=!1}return Z(()=>{d()}),{form:n,rules:F,param:s,loading:b,columns:B,dataList:_,tableSize:z,pagination:f,loadingConfig:k,dialogVisible:u,closeDialog:l,submitForm:w,onSearch:V,resetParam:I,resetForm:T,onChange:A,onSizeChange:$,onCurrentChange:O,updateTag:P,deleteTag:R,deleteBatch:U,handleSelectionChange:j,getPageTagList:d}}const ue=s=>(te("data-v-2f0217a8"),s=s(),oe(),s),me=ue(()=>ne("div",{class:"card-header"},"标签管理",-1)),pe=E({__name:"index",setup(s){const x=y(),{form:u,param:_,rules:b,loading:z,columns:v,dataList:B,tableSize:n,pagination:S,loadingConfig:F,dialogVisible:f,closeDialog:k,submitForm:V,onSearch:I,resetParam:T,onSizeChange:j,onCurrentChange:A,updateTag:$,deleteTag:O,deleteBatch:P,handleSelectionChange:R}=de();return(U,l)=>{const w=r("el-radio-button"),d=r("el-radio-group"),a=r("el-space"),h=r("el-input"),m=r("el-form-item"),p=r("el-button"),D=r("el-form"),q=r("el-popconfirm"),J=r("pure-table"),G=r("el-dialog"),H=r("el-card");return ae(),ee(H,{shadow:"never"},{header:t(()=>[me]),default:t(()=>[o(a,{class:"float-right mb-4"},{default:t(()=>[o(d,{modelValue:e(n),"onUpdate:modelValue":l[0]||(l[0]=i=>N(n)?n.value=i:null),size:"small"},{default:t(()=>[o(w,{label:"large"},{default:t(()=>[c("大")]),_:1}),o(w,{label:"default"},{default:t(()=>[c("中")]),_:1}),o(w,{label:"small"},{default:t(()=>[c("小")]),_:1})]),_:1},8,["modelValue"])]),_:1}),o(D,{inline:!0,model:e(_),class:"bg-bg_color w-[99/100]"},{default:t(()=>[o(m,{label:"标签名称：",prop:"username"},{default:t(()=>[o(h,{modelValue:e(_).tag_name,"onUpdate:modelValue":l[1]||(l[1]=i=>e(_).tag_name=i),placeholder:"请输入标签名称",clearable:"",class:"!w-[160px]"},null,8,["modelValue"])]),_:1}),o(m,null,{default:t(()=>[o(p,{type:"primary",icon:e(C)(e(le)),loading:e(z),onClick:e(I)},{default:t(()=>[c(" 搜索 ")]),_:1},8,["icon","loading","onClick"]),o(p,{icon:e(C)(e(ie)),onClick:e(T)},{default:t(()=>[c(" 重置 ")]),_:1},8,["icon","onClick"])]),_:1})]),_:1},8,["model"]),o(a,{class:"mb-4 w-[100%] flex justify-between items-center"},{default:t(()=>[o(p,{type:"danger",size:"small",icon:e(C)(e(W)),onClick:e(P)},{default:t(()=>[c("批量删除")]),_:1},8,["icon","onClick"]),o(p,{class:"reset-margin",type:"primary",size:"small",icon:e(C)(e(re)),onClick:e($)},{default:t(()=>[c("新增")]),_:1},8,["icon","onClick"])]),_:1}),o(J,{border:"","row-key":"id",alignWhole:"center",showOverflowTooltip:"",size:e(n),loading:e(z),"loading-config":e(F),height:"calc(100vh - 360px)",data:e(B),columns:e(v),pagination:e(S),onSizeChange:e(j),onCurrentChange:e(A),onSelectionChange:e(R)},{operation:t(({row:i})=>[o(p,{class:"reset-margin",link:"",type:"primary",size:"small",onClick:K=>e($)(i),icon:e(C)(e(se))},{default:t(()=>[c(" 修改 ")]),_:2},1032,["onClick","icon"]),o(q,{title:`删除标签${i.tag_name}?`,"icon-color":"#66b1ff",onConfirm:K=>e(O)(i)},{reference:t(()=>[o(p,{class:"reset-margin",link:"",type:"danger",size:"small",icon:e(C)(e(W))},{default:t(()=>[c(" 删除 ")]),_:1},8,["icon"])]),_:2},1032,["title","onConfirm"])]),_:1},8,["size","loading","loading-config","data","columns","pagination","onSizeChange","onCurrentChange","onSelectionChange"]),o(G,{title:e(u).id?"编辑标签":"新增标签",modelValue:e(f),"onUpdate:modelValue":l[4]||(l[4]=i=>N(f)?f.value=i:null),width:480,draggable:"","before-close":e(k)},{footer:t(()=>[o(p,{onClick:e(k)},{default:t(()=>[c("取消")]),_:1},8,["onClick"]),o(p,{type:"primary",onClick:l[3]||(l[3]=i=>e(V)(x.value))},{default:t(()=>[c(" 确定 ")]),_:1})]),default:t(()=>[o(D,{ref_key:"tagFormRef",ref:x,model:e(u),rules:e(b),"label-width":"100px"},{default:t(()=>[o(m,{label:"标签名称",prop:"tag_name"},{default:t(()=>[o(h,{modelValue:e(u).tag_name,"onUpdate:modelValue":l[2]||(l[2]=i=>e(u).tag_name=i),style:{width:"380px"},placeholder:"请输入标签名称",clearable:""},null,8,["modelValue"])]),_:1})]),_:1},8,["model","rules"])]),_:1},8,["title","modelValue","before-close"])]),_:1})}}});const Se=ce(pe,[["__scopeId","data-v-2f0217a8"]]);export{Se as default};
