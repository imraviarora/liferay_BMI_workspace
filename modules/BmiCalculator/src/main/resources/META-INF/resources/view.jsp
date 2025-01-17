<%@ include file="/init.jsp" %>

<p>
	<b><liferay-ui:message key="bmicalculator.caption"/></b>
</p>
<!-- <portlet:actionURL windowState="normal" var="humanInfo">
</portlet:actionURL>
<aui:form method="POST">
<aui:input name="Height"></aui:input>
<aui:select name="Hunit">
    <aui:option value="ft-inch">Option 1</aui:option>
    <aui:option value="inch">Option 2</aui:option>
    <aui:option value="cm">Option 3</aui:option>
</aui:select>
</aui:form> -->
<script>
	var $ = function (id) {
		return document.getElementById(id);
	};

function msystem() {
	if ($('msw').value == 'metric') {
		$('thw').innerHTML = ' (Cms)';
	} else {
		$('thw').innerHTML = ' (inches)';
	};
	if ($('msm').value == 'metric') {
		$('thm').innerHTML = ' (Cms)';
		$('twm').innerHTML = ' (Kgs)';
	} else {
		$('thm').innerHTML = ' (inches)';
		$('twm').innerHTML = ' (lbs)';
	};
	if ($('msf').value == 'metric') {
		$('thf').innerHTML = ' (Cms)';
		$('tneck').innerHTML = ' (Cms)';
		$('twaist').innerHTML = ' (Cms)';
		$('thips').innerHTML = ' (Cms)';
	} else {
		$('thf').innerHTML = ' (inches)';
		$('tneck').innerHTML = ' (inches)';
		$('twaist').innerHTML = ' (inches)';
		$('thips').innerHTML = ' (inches)';
	}
}

function bmass() {
	var ms = $('msm').value;
	var height = $('hm').value;
	var weight = $('wm').value;
	if (height == null || height.length == 0 || weight == null || weight.length == 0) {
		$('bmi').value = "Pl. enter data.";
	} else {
		$('bmi').value = "";
	}
	if (ms == 'metric' && height > 0) {
		$('bmi').value = Math.round(weight / (height * height / 10000) * 100) / 100 
	} else if (ms == 'us' && height > 0) {
		$('bmi').value = Math.round(703 * weight / (height * height) * 100) / 100 
	}
	//alert($('bmi').value);
	//document.getElementById("bmi").style.backgroundColor = "red";
	if ($('bmi').value>=25||$('bmi').value<18.5) {
		document.getElementById("bmi").style.backgroundColor = "yellow";
	}
	else if($('bmi').value>=18.5 && $('bmi').value<25){
		document.getElementById("bmi").style.backgroundColor = "green";
	}
	
} 
</script>
<style>
#outer {
	width: 350px;
	background: #fff;
	text-align: center;
}

/* #cover {
	border: 2px solid #111;
	border-radius: 7px;
	box-shadow: inset 0 0 13px #888;
	padding: 7px 0 
} */
.bmi{

}
.main {
	table-layout: fixed;
	width: 94%;
	border: 0;
	border-collapse: collapse;
	margin: 0 auto;
}

.main td {
	padding: 0 8px;
	
	text-align: right;
	
	font: 500 11px arial
	display: block;
	margin: 0;
	padding: var(--inputPaddingV) var(--inputPaddingH);
	color: inherit;
	width: 100%;
	font-family: inherit;
	font-size: var(--inputFontSize);
	font-weight: inherit;
	line-height: var(--inputLineHeight);
	border: none;
	border-radius: 0.4rem;
	transition: box-shadow var(--transitionDuration);
}

.main input {
	width: 96%;
	border: 1px solid #ccc;
	margin: 2px 0;
	padding: 0 2%;
	height: 17px;
	text-align: right;
	font: 500 11px arial;
	background: none;
	position: relative;
}

td.ac {
	text-align: center
}

.main select {
	width: 100%;
	border: 1px solid #ccc;
	margin: 2px 0;
	background: #fff;
	height: 18px;
	font: 500 11px arial
}

.main button {
	width: 100%;
	font: 600 12px arial;
	margin: 2px 0;
}

.w60 {

}

.w40 {
	width: 40%
}
.op{
	
}
.input-text:focus {
  outline: none;
  box-shadow: 0.2rem 0.8rem 1.6rem var(--colorPrimary600);
}
</style>
<div id=outer>
	<div id=cover>
		<form name=fn>
			<table class=main>
				<col class=w60>
				<col class=w60>
				<tr>
					<td>Measuring System
					<td><select id=msm onchange=msystem();>
					<option value=metric>Metric (Kgs, Cms)
							<option value=us>US (lbs, inches)</select>
				<tr>
					<td>Height<span id=thm> (Cms)</span>
					<td><input id=hm>
				<tr>
					<td>Weight <span id=twm> (Kgs)</span>
					<td><input id=wm>
				<tr>
					<td><button type=reset>Reset</button>
					<td><button type=button onclick='bmass();'>Submit</button>
				<tr>
					<td>Body Mass Index
					<td><input id=bmi class=op onchange="checkFilled();">kg/m2
				<tr>
					<td>Normal BMI range
					<td><input type="text" class=op id=nbmi value='18.5-25 '>kg/m2
				<tr>
					<td colspan=2 class=ac><br>The calculations are based on
						WHO recommendations.
			</table>
		</form>
	</div>
</div>
