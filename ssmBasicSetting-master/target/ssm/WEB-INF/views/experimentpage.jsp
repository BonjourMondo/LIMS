<%--
  Created by IntelliJ IDEA.
  User: 10641
  Date: 2019/3/29
  Time: 14:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>实验仪器预约</title>
    <link rel="stylesheet" href="asserts/css/style.default.css" type="text/css" />
    <script type="text/javascript" src="asserts/js/plugins/jquery-1.7.min.js"></script>
    <script type="text/javascript" src="asserts/js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
    <script type="text/javascript" src="asserts/js/plugins/jquery.cookie.js"></script>
    <script type="text/javascript" src="asserts/js/plugins/jquery.uniform.min.js"></script>
    <script type="text/javascript" src="asserts/js/plugins/jquery.validate.min.js"></script>
    <script type="text/javascript" src="asserts/js/plugins/jquery.tagsinput.min.js"></script>
    <script type="text/javascript" src="asserts/js/plugins/charCount.js"></script>
    <script type="text/javascript" src="asserts/js/plugins/ui.spinner.min.js"></script>
    <script type="text/javascript" src="asserts/js/plugins/chosen.jquery.min.js"></script>
    <script type="text/javascript" src="asserts/js/custom/general.js"></script>
    <script type="text/javascript" src="asserts/js/custom/forms.js"></script>

    <!--[if IE 9]>
    <link rel="stylesheet" media="screen" href="asserts/css/style.ie9.css"/>
    <![endif]-->
    <!--[if IE 8]>
    <link rel="stylesheet" media="screen" href="asserts/css/style.ie8.css"/>
    <![endif]-->
    <!--[if lt IE 9]>
    <script src="asserts/http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->
</head>

<body class="withvernav">

<div class="bodywrapper">
    <div class="topheader">
        <div class="left">
            <h1 class="logo">河海大学<span>材料实验室预约管理系统</span></h1>
            <span class="slogan">后台管理系统</span>

            <br clear="all" />

        </div><!--left-->

        <div class="right">
            <!--<div class="notification">
                <a class="count" href="notifications.html"><span>9</span></a>
            </div>
            -->
            <div class="userinfo">
                <span>当前用户：1561310234 （张畅）</span>
            </div><!--userinfo-->
        </div><!--right-->
    </div><!--topheader-->

    <div class="vernav2 iconmenu">
        <ul>
            <li><a href="index" class="tables">预约信息表</a></li>
            <li class="current"><a href="#formsub" class="editor">预约</a>
                <span class="arrow"></span>
                <ul id="formsub">
                    <li class="current"><a href="experimentpage">实验课程预约</a></li>
                    <li><a href="instrumentpage">实验仪器预约</a></li>
                </ul>
            </li>
            <li><a href="recordpage" class="elements">记录</a></li>
        </ul>
        <a class="togglemenu"></a>
        <br /><br />
    </div><!--leftmenu-->

    <div class="centercontent">

        <div class="pageheader">
            <h1 class="pagetitle">预约信息表</h1>
            <span class="pagedesc">将预约信息填写在下列表格中</span>

            <ul class="hornav">
                <li class="current"><a href="#basicform">班级预约</a></li>
                <li><a href="#validation">个人预约</a></li>
            </ul>
        </div><!--pageheader-->

        <div id="contentwrapper" class="contentwrapper">

            <div id="basicform" class="subcontent">

                <div class="contenttitle2">
                    <h3>实验室课程预约</h3>
                </div><!--contenttitle-->

                <form class="stdform" action="/experimentpage_class" method="post">

                    <p>
                        <label>实验课程</label>
                        <span class="field">
                            <select name="coursename" class="uniformselect">
                                <option value="">工程材料A</option>
                                <option value="">工程材料B</option>
                                <option value="">材料科学基础</option>
                                <option value="">材料热力学与物理化学</option>
                            </select>
                        </span>
                    </p>

                    <p>
                        <label>实验名称</label>
                        <span class="field">
                            <select name="experimentname" class="uniformselect">
                                <option value="">铁碳平衡组织观察分析</option>
                                <option value="">热处理及硬度</option>
                                <option value="">非平衡组织观察分析</option>
                                <option value="">平衡组织观察分析</option>
                                <option value="">金相试样制备+</option>
                                <option value="">二元合金相图</option>
                                <option value="">原电池电动势</option>
                                <option value="">燃烧热测定</option>
                                <option value="">乙酸乙酯的皂化</option>
                            </select>
                        </span>
                    </p>

                    <p>
                        <label>教室选择</label>
                        <span class="field">
                            <select name="classroom" class="uniformselect">
                            	<option value="">B405</option>
                                <option value="">B407</option>
                                <option value="">B409</option>
                                <option value="">B411</option>
                            </select>
                        </span>
                    </p>

                    <p>
                        <label>预约班级</label>
                        <span class="field"><input type="text" name="bookingman" class="smallinput" /></span>
                        <small class="desc">请按“专业-班级”填写，如：工程材料-1班</small>
                    </p>

                    <p>
                        <label>预约人数</label>
                        <span class="field"><input type="text" name="bookingnumber" class="smallinput" /></span>
                    </p>

                    <p>
                        <label>时间选择</label>
                        <span class="field">
                            <select name="time" class="uniformselect">
                            	<option value="">8:00-9:35</option>
                                <option value="">9:50-11:25</option>
                                <option value="">2:00-3:35</option>
                                <option value="">3:55-5:35</option>
                            </select>
                        </span>
                    </p>


                    <br clear="all" /><br />

                    <p class="stdformbutton">
                        <button class="submit radius2">提交</button>
                        <input type="reset" class="reset radius2" value="撤销" />
                    </p>



                </form>

            </div><!--subcontent-->

            <div id="validation" class="subcontent" style="display: none">

                <div class="contenttitle2">
                    <h3>实验室课程预约</h3>
                </div><!--contenttitle-->

                <form class="stdform" action="" method="post">

                    <p>
                        <label>实验课程</label>
                        <span class="field">
                            <select name="coursename" class="uniformselect">
                                <option value="">工程材料A</option>
                                <option value="">工程材料B</option>
                                <option value="">材料科学基础</option>
                                <option value="">材料热力学与物理化学</option>
                            </select>
                        </span>
                    </p>

                    <p>
                        <label>实验名称</label>
                        <span class="field">
                            <select name="experimentname" class="uniformselect">
                                <option value="">铁碳平衡组织观察分析</option>
                                <option value="">热处理及硬度</option>
                                <option value="">非平衡组织观察分析</option>
                                <option value="">平衡组织观察分析</option>
                                <option value="">金相试样制备+</option>
                                <option value="">二元合金相图</option>
                                <option value="">原电池电动势</option>
                                <option value="">燃烧热测定</option>
                                <option value="">乙酸乙酯的皂化</option>
                            </select>
                        </span>
                    </p>

                    <p>
                        <label>教室选择</label>
                        <span class="field">
                            <select name="classroom" class="uniformselect">
                            	<option value="">B405</option>
                                <option value="">B407</option>
                                <option value="">B409</option>
                                <option value="">B411</option>
                            </select>
                        </span>
                    </p>

                    <p>
                        <label>预约人姓名</label>
                        <span class="field"><input type="text" name="bookingman" class="smallinput" /></span>
                        <small class="desc">如：张三</small>
                    </p>

                    <p>
                        <label>预约人数</label>
                        <span class="field"><input type="text" name="bookingnumber" class="smallinput" /></span>
                    </p>

                    <p>
                        <label>时间选择</label>
                        <span class="field">
                            <select name="time" class="uniformselect">
                            	<option value="">8:00-9:35</option>
                                <option value="">9:50-11:25</option>
                                <option value="">2:00-3:35</option>
                                <option value="">3:55-5:35</option>
                            </select>
                        </span>
                    </p>


                    <br clear="all" /><br />

                    <p class="stdformbutton">
                        <button class="submit radius2">提交</button>
                        <input type="reset" class="reset radius2" value="撤销" />
                    </p>



                </form>

            </div><!--subcontent-->

        </div><!--contentwrapper-->

    </div><!-- centercontent -->


</div><!--bodywrapper-->

</body>
</html>

