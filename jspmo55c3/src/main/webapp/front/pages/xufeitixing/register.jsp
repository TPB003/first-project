<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 注册 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>注册</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
			</head>
	<style type="text/css">
		html, body {
			height: 100%;
		}
		.register {
			display: flex;
			justify-content: center;
			align-items: center;
		    width: 100%;
		    height: 100%;
			background-attachment: fixed;
			background-size: cover;
			background-position: center;
									background-image: url(http://codegen.caihongy.cn/20210307/d09089cb94194cdfb0a53c2edeb87136.jpg);
								}
		.register form {
			box-sizing: border-box;
			min-height: 400px;
			display: flex;
			flex-direction: column;
			justify-content: center;
		}
		.register .logo, .register .title {
			box-sizing: border-box;
		}
		.register .logo img {
			display: block;
		}
		.register .title {
			text-align: center;
		}
		.register .form-item {
			display: flex;
			align-items: center;
			flex-wrap: wrap;
			box-sizing: border-box;
		}
		.register .form-item input, .register .form-label {
			box-sizing: border-box;
		}
		.register .btn-submit {
			display: block;
			box-sizing: border-box;
		}
		.register form p.txt {
			width: 100%;
			margin: 0;
			box-sizing: border-box;
		}
	</style>
	<body>
				<div class="register" id="app" style="position:relative">
			<form class="layui-form login-form" :style='{"padding":"20px","boxShadow":"0 0 6px rgba(0,0,0,0.3)","borderColor":"rgba(0,0,0,.3)","backgroundColor":"rgba(255, 255, 255, 0.5)","borderRadius":"20px","borderWidth":"0","width":"400px","borderStyle":"solid","justifyContent":"center","height":"auto"}'>
				<h2 class="logo" v-if="true" :style='{"padding":"0 10px","boxShadow":"none","margin":"10px auto 0","borderColor":"rgba(0,0,0,1)","backgroundColor":"rgba(247, 247, 247, 0)","color":"rgba(255, 192, 1, 1)","isshow":true,"borderRadius":"8px","borderWidth":"0","width":"auto","lineHeight":"32px","fontSize":"20px","borderStyle":"solid"}'>USER / REGISTER</h2>
				<div class="title" v-if="true" :style='{"padding":"0","boxShadow":"none","margin":"10px auto","borderColor":"rgba(0,0,0,1)","backgroundColor":"rgba(0,0,0,0)","color":"rgba(255, 192, 1, 1)","isshow":true,"borderRadius":"100%","borderWidth":"0","width":"auto","lineHeight":"38px","fontSize":"20px","borderStyle":"solid"}'>续费提醒注册</p></div>
			

                <div :style='{"padding":"0","boxShadow":"none","margin":"0 auto","borderColor":"rgba(0,0,0,1)","backgroundColor":"rgba(255, 255, 255, 0)","borderRadius":"0","borderWidth":"0 0 1px 0","width":"80%","borderStyle":"solid","height":"64px"}' class="form-item">
					<label v-if="true" :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(255,0,0,0)","borderColor":"rgba(0,0,0,0)","backgroundColor":"transparent","color":"#333","borderRadius":"0","textAlign":"right","borderWidth":"0","width":"84px","fontSize":"16px","borderStyle":"solid"}' class="layui-form-label">车位编号：</label>
					<input :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(0,0,0,.5)","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 0.5)","color":"#333","borderRadius":"8px","textAlign":"left","borderWidth":"0","width":"180px","fontSize":"14px","borderStyle":"solid","height":"44px"}' type="text" id="cheweibianhao" name="cheweibianhao" placeholder="请输入车位编号" autocomplete="off" class="layui-input">
				</div>
                <div :style='{"padding":"0","boxShadow":"none","margin":"0 auto","borderColor":"rgba(0,0,0,1)","backgroundColor":"rgba(255, 255, 255, 0)","borderRadius":"0","borderWidth":"0 0 1px 0","width":"80%","borderStyle":"solid","height":"64px"}' class="form-item">
					<label v-if="true" :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(255,0,0,0)","borderColor":"rgba(0,0,0,0)","backgroundColor":"transparent","color":"#333","borderRadius":"0","textAlign":"right","borderWidth":"0","width":"84px","fontSize":"16px","borderStyle":"solid"}' class="layui-form-label">车位名称：</label>
					<input :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(0,0,0,.5)","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 0.5)","color":"#333","borderRadius":"8px","textAlign":"left","borderWidth":"0","width":"180px","fontSize":"14px","borderStyle":"solid","height":"44px"}' type="text" id="cheweimingcheng" name="cheweimingcheng" placeholder="请输入车位名称" autocomplete="off" class="layui-input">
				</div>
                <div :style='{"padding":"0","boxShadow":"none","margin":"0 auto","borderColor":"rgba(0,0,0,1)","backgroundColor":"rgba(255, 255, 255, 0)","borderRadius":"0","borderWidth":"0 0 1px 0","width":"80%","borderStyle":"solid","height":"64px"}' class="form-item">
					<label v-if="true" :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(255,0,0,0)","borderColor":"rgba(0,0,0,0)","backgroundColor":"transparent","color":"#333","borderRadius":"0","textAlign":"right","borderWidth":"0","width":"84px","fontSize":"16px","borderStyle":"solid"}' class="layui-form-label">车位类型：</label>
					<input :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(0,0,0,.5)","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 0.5)","color":"#333","borderRadius":"8px","textAlign":"left","borderWidth":"0","width":"180px","fontSize":"14px","borderStyle":"solid","height":"44px"}' type="text" id="cheweileixing" name="cheweileixing" placeholder="请输入车位类型" autocomplete="off" class="layui-input">
				</div>
                <div :style='{"padding":"0","boxShadow":"none","margin":"0 auto","borderColor":"rgba(0,0,0,1)","backgroundColor":"rgba(255, 255, 255, 0)","borderRadius":"0","borderWidth":"0 0 1px 0","width":"80%","borderStyle":"solid","height":"64px"}' class="form-item">
					<label v-if="true" :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(255,0,0,0)","borderColor":"rgba(0,0,0,0)","backgroundColor":"transparent","color":"#333","borderRadius":"0","textAlign":"right","borderWidth":"0","width":"84px","fontSize":"16px","borderStyle":"solid"}' class="layui-form-label">位置：</label>
					<input :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(0,0,0,.5)","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 0.5)","color":"#333","borderRadius":"8px","textAlign":"left","borderWidth":"0","width":"180px","fontSize":"14px","borderStyle":"solid","height":"44px"}' type="text" id="weizhi" name="weizhi" placeholder="请输入位置" autocomplete="off" class="layui-input">
				</div>
                <div :style='{"padding":"0","boxShadow":"none","margin":"0 auto","borderColor":"rgba(0,0,0,1)","backgroundColor":"rgba(255, 255, 255, 0)","borderRadius":"0","borderWidth":"0 0 1px 0","width":"80%","borderStyle":"solid","height":"64px"}' class="form-item">
					<label v-if="true" :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(255,0,0,0)","borderColor":"rgba(0,0,0,0)","backgroundColor":"transparent","color":"#333","borderRadius":"0","textAlign":"right","borderWidth":"0","width":"84px","fontSize":"16px","borderStyle":"solid"}' class="layui-form-label">租赁类型：</label>
					<input :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(0,0,0,.5)","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 0.5)","color":"#333","borderRadius":"8px","textAlign":"left","borderWidth":"0","width":"180px","fontSize":"14px","borderStyle":"solid","height":"44px"}' type="text" id="zulinleixing" name="zulinleixing" placeholder="请输入租赁类型" autocomplete="off" class="layui-input">
				</div>
                <div :style='{"padding":"0","boxShadow":"none","margin":"0 auto","borderColor":"rgba(0,0,0,1)","backgroundColor":"rgba(255, 255, 255, 0)","borderRadius":"0","borderWidth":"0 0 1px 0","width":"80%","borderStyle":"solid","height":"64px"}' class="form-item">
					<label v-if="true" :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(255,0,0,0)","borderColor":"rgba(0,0,0,0)","backgroundColor":"transparent","color":"#333","borderRadius":"0","textAlign":"right","borderWidth":"0","width":"84px","fontSize":"16px","borderStyle":"solid"}' class="layui-form-label">续费金额：</label>
					<input :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(0,0,0,.5)","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 0.5)","color":"#333","borderRadius":"8px","textAlign":"left","borderWidth":"0","width":"180px","fontSize":"14px","borderStyle":"solid","height":"44px"}' type="text" id="xufeijine" name="xufeijine" placeholder="请输入续费金额" autocomplete="off" class="layui-input">
				</div>
                <div :style='{"padding":"0","boxShadow":"none","margin":"0 auto","borderColor":"rgba(0,0,0,1)","backgroundColor":"rgba(255, 255, 255, 0)","borderRadius":"0","borderWidth":"0 0 1px 0","width":"80%","borderStyle":"solid","height":"64px"}' class="form-item">
					<label v-if="true" :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(255,0,0,0)","borderColor":"rgba(0,0,0,0)","backgroundColor":"transparent","color":"#333","borderRadius":"0","textAlign":"right","borderWidth":"0","width":"84px","fontSize":"16px","borderStyle":"solid"}' class="layui-form-label">备注：</label>
					<input :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(0,0,0,.5)","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 0.5)","color":"#333","borderRadius":"8px","textAlign":"left","borderWidth":"0","width":"180px","fontSize":"14px","borderStyle":"solid","height":"44px"}' type="text" id="beizhu" name="beizhu" placeholder="请输入备注" autocomplete="off" class="layui-input">
				</div>
                <div :style='{"padding":"0","boxShadow":"none","margin":"0 auto","borderColor":"rgba(0,0,0,1)","backgroundColor":"rgba(255, 255, 255, 0)","borderRadius":"0","borderWidth":"0 0 1px 0","width":"80%","borderStyle":"solid","height":"64px"}' class="form-item">
					<label v-if="true" :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(255,0,0,0)","borderColor":"rgba(0,0,0,0)","backgroundColor":"transparent","color":"#333","borderRadius":"0","textAlign":"right","borderWidth":"0","width":"84px","fontSize":"16px","borderStyle":"solid"}' class="layui-form-label">账号：</label>
					<input :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(0,0,0,.5)","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 0.5)","color":"#333","borderRadius":"8px","textAlign":"left","borderWidth":"0","width":"180px","fontSize":"14px","borderStyle":"solid","height":"44px"}' type="text" id="zhanghao" name="zhanghao" placeholder="请输入账号" autocomplete="off" class="layui-input">
				</div>
                <div :style='{"padding":"0","boxShadow":"none","margin":"0 auto","borderColor":"rgba(0,0,0,1)","backgroundColor":"rgba(255, 255, 255, 0)","borderRadius":"0","borderWidth":"0 0 1px 0","width":"80%","borderStyle":"solid","height":"64px"}' class="form-item">
					<label v-if="true" :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(255,0,0,0)","borderColor":"rgba(0,0,0,0)","backgroundColor":"transparent","color":"#333","borderRadius":"0","textAlign":"right","borderWidth":"0","width":"84px","fontSize":"16px","borderStyle":"solid"}' class="layui-form-label">姓名：</label>
					<input :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(0,0,0,.5)","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 0.5)","color":"#333","borderRadius":"8px","textAlign":"left","borderWidth":"0","width":"180px","fontSize":"14px","borderStyle":"solid","height":"44px"}' type="text" id="xingming" name="xingming" placeholder="请输入姓名" autocomplete="off" class="layui-input">
				</div>

				<div style="display:flex;flex-wrap:wrap;">
					<button :style='{"padding":"0 10px","boxShadow":"none","margin":"10px 5% 10px 0","borderColor":"#ccc","backgroundColor":"rgba(255, 192, 1, 1)","color":"#fff","borderRadius":"0","borderWidth":"0","width":"60%","fontSize":"20px","borderStyle":"solid","height":"44px"}' class="layui-btn btn-submit" lay-submit lay-filter="register">注册</button>
					<button :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(0,0,0,0.3)","margin":"10px 0 10px 5%","borderColor":"#ccc","backgroundColor":"#fff","color":"rgba(255, 192, 1, 1)","borderRadius":"0","borderWidth":"0","width":"30%","fontSize":"20px","borderStyle":"solid","height":"44px"}' type="reset" class="layui-btn layui-btn-primary">重置</button>
				</div>
				<p :style='{"color":"#999","textAlign":"center","fontSize":"18px"}' class="txt"><a style="color: inherit;" href="javascript:window.location.href='../login/login.jsp'">已有账号？去登录</a></p>
			</form>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>
				<script>
			var vue = new Vue({
			  el: '#app',
			  data: {
			  },
			  methods: {
				
			  }
			});
			
			layui.use(['layer', 'element', 'carousel', 'form', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var form = layui.form;
				var http = layui.http;
				var jquery = layui.jquery;
				var tablename = http.getParam('tablename');
				// 注册
				form.on('submit(register)', function(data) {
					data = data.field;
                    if(!isIntNumer(data.xufeijine)){
                        layer.msg('续费金额应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }

                    var url = tablename + '/register';
                    http.requestJson(url, 'post', data, function(res) {
						layer.msg('注册成功', {
							time: 2000,
							icon: 6
						},function(){
							// 路径访问设置
							window.location.href = '../login/login.jsp';
						});
					});
					return false
				});

			});
		</script>
	</body>
</html>