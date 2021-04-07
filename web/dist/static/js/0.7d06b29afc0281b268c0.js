webpackJsonp([0],{"3XpA":function(t,e,i){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var o=i("mtWM"),r=i.n(o);function a(){return r()({method:"get",url:"/api/experiment/exLists",headers:{Authorization:window.localStorage.tea_Authorization}})}function n(t,e,i,o){return r()({method:"post",url:"/api/experiment/addEx",headers:{Authorization:window.localStorage.tea_Authorization},data:{name:t,url:e,introduction:i,introductionUrl:o}})}function s(t){return r()({method:"post",url:"/api/experiment/deleteEx",headers:{Authorization:window.localStorage.tea_Authorization},data:{id:t}})}var l={data:function(){return{exLists:[],cur_exLists:[],numTotal:0,pageNo:1,pageSize:3,dialogFormVisible:!1,form:{name:"",url:"",introduction:"",introductionUrl:""},rules:{name:[{message:"请输入实验名称",required:!0,trigger:"blur"},{min:0,max:20,message:"长度应小于 20 个字符",trigger:"blur"}],url:[{message:"请输入url",required:!0,trigger:"blur"},{min:0,max:255,message:"长度应小于 255 个字符",trigger:"blur"}]},formLabelWidth:"120px",exiVisible:!1,introduction:"",introductionUrl:""}},created:function(){this.getExLists()},methods:{getExLists:function(){var t=this;a().then(function(e){200==e.data.status?(t.exLists=e.data.data,t.numTotal=t.exLists.length,t.getlist(t.pageNo)):403==e.data.status&&t.$router.replace("/tea_error")}).catch(function(t){console.log(t)})},getlist:function(){var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:-1;for(var e in-1!=t&&(this.pageNo=t),this.cur_exLists=[],this.exLists)e>=(this.pageNo-1)*this.pageSize&&e<this.pageNo*this.pageSize&&this.cur_exLists.push(this.exLists[e])},pre_page:function(){this.pageNo>1&&(this.pageNo--,this.getlist(this.pageNo))},next_page:function(){this.pageNo<this.pageTotal&&(this.pageNo++,this.getlist(this.pageNo))},curPage:function(t){this.pageNo=t,this.getlist(t)},handleClose:function(){this.$refs.ruleForm.resetFields(),this.form.exName="",this.form.url=""},handleSave:function(){var t=this;this.$refs.ruleForm.validate(function(e){e?n(t.form.name,t.form.url,t.form.introduction,t.form.introductionUrl).then(function(e){if(200==e.data.status)t.getExLists(),t.dialogFormVisible=!1,t.$message.success("添加成功");else{if(403!=e.data.status)return t.$message.error("添加失败, "+e.data.msg),!1;t.$router.replace("/tea_error")}}).catch(function(t){console.log(t)}):t.$message.error("添加失败")})},addEx:function(){this.dialogFormVisible=!0},deleteEx:function(t){var e=this;s(t).then(function(t){if(200==t.data.status)e.numTotal%e.pageSize==1&&e.pageNo*e.pageSize>e.numTotal-1&&e.pageNo--,e.getExLists(),e.$message.success("删除成功");else{if(403!=t.data.status)return e.$message.error("添加失败, "+t.data.msg),!1;e.$router.replace("/tea_error")}}).catch(function(t){console.log(t)})},goToEx:function(t){window.open(t)},seeIntroduction:function(t,e){this.introduction=t,this.introductionUrl=e,this.exiVisible=!0},exihandleClose:function(){this.exiVisible=!1},exihandleSave:function(){this.exiVisible=!1}}},u={render:function(){var t=this,e=t.$createElement,i=t._self._c||e;return i("div",{staticClass:"menu"},[i("el-row",[i("el-col",{attrs:{span:17}},[i("div",{staticClass:"menuBtnList"},[i("div",{staticClass:"menuBtnListCon"},[i("ul",t._l(t.cur_exLists,function(e,o){return i("li",[i("el-button",{staticClass:"exDelete",attrs:{type:"primary",size:"small",plain:""},on:{click:function(i){return t.goToEx(e.url)}}},[t._v("进入实验")]),t._v(" "),i("el-button",{staticClass:"menuBtnListBtn",attrs:{type:"primary",size:"small",plain:""},on:{click:function(i){return t.seeIntroduction(e.introduction,e.introductionUrl)}}},[t._v("查看简介")]),t._v(" "),i("el-popconfirm",{attrs:{title:"是否删除？"},on:{confirm:function(i){return t.deleteEx(e.id)}}},[i("el-button",{staticStyle:{float:"right","margin-top":"30px"},attrs:{slot:"reference",type:"danger",icon:"el-icon-delete",circle:"",size:"mini"},slot:"reference"})],1),t._v(" "),i("span",{staticClass:"menuBtnListP"},[t._v(t._s(e.name))]),t._v(" "),i("el-divider")],1)}),0),t._v(" "),i("nav",{staticClass:"page-bar",attrs:{"aria-label":"page_navigation"}},[i("el-pagination",{attrs:{background:"",layout:"prev, pager, next",total:t.numTotal,"page-size":t.pageSize,"hide-on-single-page":t.numTotal<=t.pageSize},on:{"prev-click":function(e){return t.pre_page()},"next-click":function(e){return t.next_page()},"current-change":t.curPage}})],1)])])]),t._v(" "),i("el-col",{attrs:{span:7}},[i("el-button",{staticClass:"exAdd",attrs:{type:"primary"},on:{click:t.addEx}},[t._v("添加实验")])],1)],1),t._v(" "),i("el-dialog",{attrs:{customClass:"createEx",title:"添加实验",visible:t.dialogFormVisible,"append-to-body":!0},on:{"update:visible":function(e){t.dialogFormVisible=e},closed:t.handleClose}},[i("el-form",{ref:"ruleForm",attrs:{model:t.form,rules:t.rules}},[i("el-form-item",{attrs:{label:"实验名称","label-width":t.formLabelWidth,prop:"name"}},[i("el-input",{staticClass:"createGroupDiagInput",attrs:{autocomplete:"off"},model:{value:t.form.name,callback:function(e){t.$set(t.form,"name",e)},expression:"form.name"}})],1),t._v(" "),i("el-form-item",{attrs:{label:"实验链接","label-width":t.formLabelWidth,prop:"url"}},[i("el-input",{staticClass:"createGroupDiagInput",attrs:{autocomplete:"off"},model:{value:t.form.url,callback:function(e){t.$set(t.form,"url",e)},expression:"form.url"}})],1),t._v(" "),i("el-form-item",{attrs:{label:"实验简介","label-width":t.formLabelWidth,prop:"introduction"}},[i("el-input",{staticClass:"createGroupDiagInput",attrs:{type:"textarea",rows:2,maxlength:"2000","show-word-limit":"",autocomplete:"off"},model:{value:t.form.introduction,callback:function(e){t.$set(t.form,"introduction",e)},expression:"form.introduction"}})],1),t._v(" "),i("el-form-item",{attrs:{label:"实验简介链接","label-width":t.formLabelWidth,prop:"introductionUrl"}},[i("el-input",{staticClass:"createGroupDiagInput",attrs:{autocomplete:"off"},model:{value:t.form.introductionUrl,callback:function(e){t.$set(t.form,"introductionUrl",e)},expression:"form.introductionUrl"}})],1)],1),t._v(" "),i("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[i("el-button",{on:{click:function(e){t.dialogFormVisible=!1}}},[t._v("取消")]),t._v(" "),i("el-button",{attrs:{type:"primary"},on:{click:t.handleSave}},[t._v("确定")])],1)],1),t._v(" "),i("el-dialog",{attrs:{customClass:"releaseDialog",title:"实验简介",visible:t.exiVisible,"append-to-body":!0},on:{"update:visible":function(e){t.exiVisible=e},closed:t.exihandleClose}},[i("p",[t._v(t._s(t.introduction))]),t._v(" "),null!=t.introductionUrl&&""!=t.introductionUrl?i("el-link",{attrs:{href:t.introductionUrl,target:"_blank",type:"primary"}},[t._v("实验简介链接")]):t._e(),t._v(" "),i("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[i("el-button",{attrs:{type:"primary"},on:{click:t.exihandleSave}},[t._v("确定")])],1)],1)],1)},staticRenderFns:[]};i.d(e,"get_exLists",function(){return a}),i.d(e,"post_addEx",function(){return n}),i.d(e,"post_deleteEx",function(){return s});var c=i("VU/8")(l,u,!1,function(t){i("MgG2"),i("mhRq")},"data-v-f4338b46",null);e.default=c.exports},MgG2:function(t,e){},mhRq:function(t,e){}});
//# sourceMappingURL=0.7d06b29afc0281b268c0.js.map