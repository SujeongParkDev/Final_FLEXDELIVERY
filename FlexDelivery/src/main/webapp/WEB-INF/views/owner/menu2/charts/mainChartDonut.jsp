<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!-- stylesheet -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script>
$(function(){
	
	 var chart = c3.generate({
		size:{
			height:200
		},
		bindto: '#chart',
	    data: {
	        columns: [
	            ['data1', 30],
	            ['data2', 120],
	            ['data3', 30],
	        ],
	        names: {
	            data1: '족발',
	            data2: '보쌈',
	            data3: '막국수',
	        },
            labels: false,
	        type : 'pie',
	        onclick: function (d, i) { console.log("onclick", d, i); },
	        onmouseover: function (d, i) { console.log("onmouseover", d, i); },
	        onmouseout: function (d, i) { console.log("onmouseout", d, i); }
	    },
	    legend: {
	        position: 'right'
	    }
	});
	 
	
});

</script>

<div id="chart"></div>

