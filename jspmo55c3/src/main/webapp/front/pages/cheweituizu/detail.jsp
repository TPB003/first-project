<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 首页 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>首页</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		html::after {
			position: fixed;
			top: 0;
			right: 0;
			left: 0;
			bottom: 0;
			content: '';
			display: block;
			background-attachment: fixed;
			background-size: cover;
			background-position: center;
			z-index: -1;
		}
		#swiper {
			overflow: hidden;
		}
		#swiper .layui-carousel-ind li {
			width: 16px;
			height: 10px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(0,0,0,.3);
			border-radius: 3px;
			background-color: #f7f7f7;
			box-shadow: 0 0 6px rgba(110,22,64,.8);
		}
		#swiper .layui-carousel-ind li.layui-this {
			width: 24px;
			height: 10px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(0,0,0,.3);
			border-radius: 0;
			background-color: rgba(110,22,64,1);
			box-shadow: 0 0 6px rgba(110,22,64,.8);
		}
	
		input#buynumber::-webkit-outer-spin-button, input::-webkit-inner-spin-button { -webkit-appearance: none; }
		input#buynumber[type="number"]{ -moz-appearance: textfield; }
	
		.message-container {width: 100%}
	
		.detail-tab .layui-tab-card>.layui-tab-title .layui-this {
			background-color: rgba(255, 192, 1, 1);
			color: #fff;
			font-size: 20px;
		}
	
	.data-detail {
	  padding-bottom: 20px;
	}
	
	.data-detail .layui-breadcrumb a.first {
	  color: #999 !important;
	}
	</style>
	<body>

		<div id="app">
			<div class="data-detail" style="padding:0;">
				<div class="data-detail-breadcrumb" :style='{"padding":"0 10px","boxShadow":"0 0 6px #FFC001","margin":"20px auto","borderColor":"rgba(110,22,64,.3)","backgroundColor":"#fff","borderRadius":"4px","borderWidth":"0","borderStyle":"solid","height":"54px"}'>
					<span class="layui-breadcrumb">
						<a class="first" :style='{"padding":"8px 10px","boxShadow":"0 0 6px rgba(255,0,0,0)","margin":"0 5px","borderColor":"rgba(110,22,64,.3)","backgroundColor":"#fff","color":"#999","borderRadius":"0","borderWidth":"0","fontSize":"16px","borderStyle":"solid"}' href="../home/home.jsp">首页</a>
						<a><cite :style='{"padding":"8px 15px","boxShadow":"none","margin":"0 15px","borderColor":"rgba(110,22,64,.3)","backgroundColor":"#fff","color":"#333","borderRadius":"4px","borderWidth":"0","fontSize":"16px","borderStyle":"solid"}'>{{title}}</cite></a>
					</span>


				</div>
			</div>
			<div class="data-detail" style="padding:0;width:100%;" :style='{"padding":"0","boxShadow":"0 0 6px rgba(255,0,0,0)","margin":"0","borderColor":"rgba(0,0,0,.3)","borderRadius":"0","borderWidth":"0","background":"rgba(255, 255, 255, 0.3)","borderStyle":"solid"}'>
				<div class="layui-row" style="display: flex;width:980px;margin: 0 auto;">
					<div class="layui-col-md5" style="width:400px">
						<!-- <div class="layui-carousel" id="swiper">
							<div carousel-item id="swiper-item">
								<div v-for="(item,index) in swiperList" v-bind:key="index">
									<img class="swiper-item" :src="item.img">
								</div>
							</div>
						</div> -->
						<div class="layui-carousel" id="swiper" :style='{"boxShadow":"none","margin":"0 auto","borderColor":"rgba(0,0,0,.3)","borderRadius":"4px","borderWidth":"0","width":"400px","borderStyle":"solid","height":"400px"}'>
						  <div carousel-item>
							<div v-if="swiperList.length" v-for="(item,index) in swiperList" :key="index">
								<img style="width: 100%;height: 100%;object-fit:cover;" :src="item" />
							</div>
						  </div>
						</div>



					</div>
					<div class="layui-col-md7" style="padding-left: 20px;flex: 1;" :style='{"padding":"0","boxShadow":"none","margin":"0 0 0 20px","borderColor":"rgba(255, 192, 1, 1)","backgroundColor":"#fff","borderRadius":"0","borderWidth":"1px","borderStyle":"solid"}'>
						<h1 style="position: relative;" :style='{"padding":"10px 15px","boxShadow":"none","borderColor":"rgba(0,0,0,.3)","backgroundColor":"#fff","color":"#333","borderRadius":"0","textAlign":"center","borderWidth":"0 0 1px 0","fontSize":"16px","borderStyle":"solid"}' class="title">{{title}}</h1>



						<div :style='{"padding":"6px 15px","boxShadow":"none","margin":"0","borderColor":"rgba(0, 0, 0, 0.3)","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0 0 1px 0","borderStyle":"solid"}' class="detail-item">
							<span :style='{"padding":"0 12px 0 0","minWidth":"94px","fontSize":"18px","color":"#333","textAlign":"right"}'>车位编号：</span>
							<span :style='{"padding":"5px 15px","boxShadow":"none","borderColor":"rgba(0,0,0,.3)","backgroundColor":"#fff","color":"rgba(255, 192, 1, 1)","borderRadius":"4px","textAlign":"center","borderWidth":"0","width":"auto","lineHeight":"34px","fontSize":"18px","borderStyle":"solid"}' class="desc">
								{{detail.cheweibianhao}}
							</span>
						</div>
						<div :style='{"padding":"6px 15px","boxShadow":"none","margin":"0","borderColor":"rgba(0, 0, 0, 0.3)","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0 0 1px 0","borderStyle":"solid"}' class="detail-item">
							<span :style='{"padding":"0 12px 0 0","minWidth":"94px","fontSize":"18px","color":"#333","textAlign":"right"}'>车位名称：</span>
							<span :style='{"padding":"5px 15px","boxShadow":"none","borderColor":"rgba(0,0,0,.3)","backgroundColor":"#fff","color":"rgba(255, 192, 1, 1)","borderRadius":"4px","textAlign":"center","borderWidth":"0","width":"auto","lineHeight":"34px","fontSize":"18px","borderStyle":"solid"}' class="desc">
								{{detail.cheweimingcheng}}
							</span>
						</div>
						<div :style='{"padding":"6px 15px","boxShadow":"none","margin":"0","borderColor":"rgba(0, 0, 0, 0.3)","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0 0 1px 0","borderStyle":"solid"}' class="detail-item">
							<span :style='{"padding":"0 12px 0 0","minWidth":"94px","fontSize":"18px","color":"#333","textAlign":"right"}'>车位类型：</span>
							<span :style='{"padding":"5px 15px","boxShadow":"none","borderColor":"rgba(0,0,0,.3)","backgroundColor":"#fff","color":"rgba(255, 192, 1, 1)","borderRadius":"4px","textAlign":"center","borderWidth":"0","width":"auto","lineHeight":"34px","fontSize":"18px","borderStyle":"solid"}' class="desc">
								{{detail.cheweileixing}}
							</span>
						</div>
						<div :style='{"padding":"6px 15px","boxShadow":"none","margin":"0","borderColor":"rgba(0, 0, 0, 0.3)","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0 0 1px 0","borderStyle":"solid"}' class="detail-item">
							<span :style='{"padding":"0 12px 0 0","minWidth":"94px","fontSize":"18px","color":"#333","textAlign":"right"}'>位置：</span>
							<span :style='{"padding":"5px 15px","boxShadow":"none","borderColor":"rgba(0,0,0,.3)","backgroundColor":"#fff","color":"rgba(255, 192, 1, 1)","borderRadius":"4px","textAlign":"center","borderWidth":"0","width":"auto","lineHeight":"34px","fontSize":"18px","borderStyle":"solid"}' class="desc">
								{{detail.weizhi}}
							</span>
						</div>
						<div :style='{"padding":"6px 15px","boxShadow":"none","margin":"0","borderColor":"rgba(0, 0, 0, 0.3)","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0 0 1px 0","borderStyle":"solid"}' class="detail-item">
							<span :style='{"padding":"0 12px 0 0","minWidth":"94px","fontSize":"18px","color":"#333","textAlign":"right"}'>租赁类型：</span>
							<span :style='{"padding":"5px 15px","boxShadow":"none","borderColor":"rgba(0,0,0,.3)","backgroundColor":"#fff","color":"rgba(255, 192, 1, 1)","borderRadius":"4px","textAlign":"center","borderWidth":"0","width":"auto","lineHeight":"34px","fontSize":"18px","borderStyle":"solid"}' class="desc">
								{{detail.zulinleixing}}
							</span>
						</div>
						<div :style='{"padding":"6px 15px","boxShadow":"none","margin":"0","borderColor":"rgba(0, 0, 0, 0.3)","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0 0 1px 0","borderStyle":"solid"}' class="detail-item">
							<span :style='{"padding":"0 12px 0 0","minWidth":"94px","fontSize":"18px","color":"#333","textAlign":"right"}'>退租时间：</span>
							<span :style='{"padding":"5px 15px","boxShadow":"none","borderColor":"rgba(0,0,0,.3)","backgroundColor":"#fff","color":"rgba(255, 192, 1, 1)","borderRadius":"4px","textAlign":"center","borderWidth":"0","width":"auto","lineHeight":"34px","fontSize":"18px","borderStyle":"solid"}' class="desc">
								{{detail.tuizushijian}}
							</span>
						</div>
						<div :style='{"padding":"6px 15px","boxShadow":"none","margin":"0","borderColor":"rgba(0, 0, 0, 0.3)","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0 0 1px 0","borderStyle":"solid"}' class="detail-item">
							<span :style='{"padding":"0 12px 0 0","minWidth":"94px","fontSize":"18px","color":"#333","textAlign":"right"}'>退租备注：</span>
							<span :style='{"padding":"5px 15px","boxShadow":"none","borderColor":"rgba(0,0,0,.3)","backgroundColor":"#fff","color":"rgba(255, 192, 1, 1)","borderRadius":"4px","textAlign":"center","borderWidth":"0","width":"auto","lineHeight":"34px","fontSize":"18px","borderStyle":"solid"}' class="desc">
								{{detail.tuizubeizhu}}
							</span>
						</div>
						<div :style='{"padding":"6px 15px","boxShadow":"none","margin":"0","borderColor":"rgba(0, 0, 0, 0.3)","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0 0 1px 0","borderStyle":"solid"}' class="detail-item">
							<span :style='{"padding":"0 12px 0 0","minWidth":"94px","fontSize":"18px","color":"#333","textAlign":"right"}'>账号：</span>
							<span :style='{"padding":"5px 15px","boxShadow":"none","borderColor":"rgba(0,0,0,.3)","backgroundColor":"#fff","color":"rgba(255, 192, 1, 1)","borderRadius":"4px","textAlign":"center","borderWidth":"0","width":"auto","lineHeight":"34px","fontSize":"18px","borderStyle":"solid"}' class="desc">
								{{detail.zhanghao}}
							</span>
						</div>
						<div :style='{"padding":"6px 15px","boxShadow":"none","margin":"0","borderColor":"rgba(0, 0, 0, 0.3)","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0 0 1px 0","borderStyle":"solid"}' class="detail-item">
							<span :style='{"padding":"0 12px 0 0","minWidth":"94px","fontSize":"18px","color":"#333","textAlign":"right"}'>姓名：</span>
							<span :style='{"padding":"5px 15px","boxShadow":"none","borderColor":"rgba(0,0,0,.3)","backgroundColor":"#fff","color":"rgba(255, 192, 1, 1)","borderRadius":"4px","textAlign":"center","borderWidth":"0","width":"auto","lineHeight":"34px","fontSize":"18px","borderStyle":"solid"}' class="desc">
								{{detail.xingming}}
							</span>
						</div>
						<div :style='{"padding":"6px 15px","boxShadow":"none","margin":"0","borderColor":"rgba(0, 0, 0, 0.3)","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0 0 1px 0","borderStyle":"solid"}' class="detail-item">
							<span :style='{"padding":"0 12px 0 0","minWidth":"94px","fontSize":"18px","color":"#333","textAlign":"right"}'>楼栋单元：</span>
							<span :style='{"padding":"5px 15px","boxShadow":"none","borderColor":"rgba(0,0,0,.3)","backgroundColor":"#fff","color":"rgba(255, 192, 1, 1)","borderRadius":"4px","textAlign":"center","borderWidth":"0","width":"auto","lineHeight":"34px","fontSize":"18px","borderStyle":"solid"}' class="desc">
								{{detail.loudongdanyuan}}
							</span>
						</div>



					</div>
				</div>
				</div>
				
				<div class="data-detail">



				<div class="layui-row detail-tab">
					<div class="layui-tab layui-tab-card" :style='{"boxShadow":"none","borderColor":"rgba(255, 192, 1, 1)","backgroundColor":"#fff","borderRadius":"10px","borderStyle":"solid","borderWidth":"1px"}' style="overflow: hidden;">

						<ul class="layui-tab-title" :style='{"color":"rgba(255, 192, 1, 1)","backgroundColor":"#f2f2f2","fontSize":"20px"}'>











						</ul>
						<div style="word-break:break-all" class="layui-tab-content">











						</div>
					</div>
				</div>
			</div>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<script>
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [],
					// 数据详情
					detail: {
						id: 0
					},
					// 商品标题
					title: '',
					// 倒计时
					count: 0,
					// 加入购物车数量
					buynumber: 1,
					// 当前详情页表
					detailTable: 'cheweituizu',
					baseurl: '',
					// 评论列表
					dataList: [],
					// 选座座位列表
					numberList: []
				},
				// 倒计时效果
				computed: {
					SecondToDate: function() {
						var time = this.count;
						if (null != time && "" != time) {
							if (time > 60 && time < 60 * 60) {
								time =
									parseInt(time / 60.0) +
									"分钟" +
									parseInt((parseFloat(time / 60.0) - parseInt(time / 60.0)) * 60) +
									"秒";
							} else if (time >= 60 * 60 && time < 60 * 60 * 24) {
								time =
									parseInt(time / 3600.0) +
									"小时" +
									parseInt(
										(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
									) +
									"分钟" +
									parseInt(
										(parseFloat(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											) -
											parseInt(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											)) *
										60
									) +
									"秒";
							} else if (time >= 60 * 60 * 24) {
								time =
									parseInt(time / 3600.0 / 24) +
									"天" +
									parseInt(
										(parseFloat(time / 3600.0 / 24) - parseInt(time / 3600.0 / 24)) *
										24
									) +
									"小时" +
									parseInt(
										(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
									) +
									"分钟" +
									parseInt(
										(parseFloat(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											) -
											parseInt(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											)) *
										60
									) +
									"秒";
							} else {
								time = parseInt(time) + "秒";
							}
						}
						return time;
					}
				},
				//  清除定时器
				destroyed: function() {
					window.clearInterval(this.inter);
				},
				methods: {
					jump(url) {
						jump(url)
					},
					isAuth(tablename, button) {
						return isFrontAuth(tablename, button)
					},
					// 倒计时初始化
					countDown() {
						let reversetime = new Date(this.detail.reversetime).getTime()
						let now = new Date().getTime();
						let count = reversetime - now;
						if (count > 0) {
							this.count = count / 1000
							var _this = this;
							this.inter = window.setInterval(function() {
								_this.count = _this.count - 1;
								if (_this.count < 0) {
									window.clearInterval(_this.inter);
									layer.msg("活动已结束", {
										time: 2000,
										icon: 5
									})
								}
							}, 1000);
						}
					},

					// 下载文件
					downFile(url) {
						var download = $("#download");
						download.append(
							"<a id=\"down\" href=\"aaaa.txt\" target=\"_blank\" download=\"aaaa.txt\" style=\"display:none\">下载该文件</a>");
						console.log(download);
						$("#down")[0].click();
					},
					// 跨表
					onAcrossTap(acrossTable,statusColumnName,tips,statusColumnValue){
						localStorage.setItem('crossTable',`cheweituizu`);
						localStorage.setItem('crossObj', JSON.stringify(this.detail));
						localStorage.setItem('statusColumnName',statusColumnName);
						localStorage.setItem('statusColumnValue',statusColumnValue);
						localStorage.setItem('tips',tips);

						if(statusColumnName!=''&&!statusColumnName.startsWith("[")) {
							var obj = JSON.parse(localStorage.getItem('crossObj'));
							for (var o in obj){
								if(o==statusColumnName && obj[o]==statusColumnValue){
									layer.msg(tips, {
										time: 2000,
										icon: 5
									});
									return
								}
							}
						}

						jump(`../${acrossTable}/add.jsp?corss=true`);
					},



					
				}
			})
			layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery', 'laypage'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var form = layui.form;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var laypage = layui.laypage;
				var limit = 10;
				// 数据ID
				var id = http.getParam('id');
				vue.detail.id = id;
				vue.baseurl = http.baseurl;
				// 商品信息
				http.request(`${vue.detailTable}/detail/` + id, 'get', {}, function(res) {
					// 详情信息
					vue.detail = res.data
					// var swiperItemHtml = '';
					// for (let item of vue.swiperList) {
					// 	swiperItemHtml +=
					// 		'<div>' +
					// 		'<img class="swiper-item" style="width: 100%;height: 100%;object-fit:cover;" src="' + item + '">' +
					// 		'</div>';
					// }
					// jquery('#swiper-item').html(swiperItemHtml);
					// 轮播图
					vue.$nextTick(() => {
					  carousel.render({
					  	elem: '#swiper',
						width: '400px',
					  	height: '400px',
					  	arrow: 'always',
					  	anim: 'default',
					  	autoplay: 'true',
					  	interval: '3000',
					  	indicator: 'none'
					  });
					
					})


				});


			});
		</script>
	</body>
</html>