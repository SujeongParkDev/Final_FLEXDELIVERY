<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:forEach var="mVo" items="${menuList}">
	<div class="p-3 border-bottom gold-members">
	    <span class="float-right"><a href="#" class="btn btn-outline-secondary btn-sm" data-toggle="modal" data-target="#option${mVo.memberMenuVo.menuNo}">옵션 선택</a></span>
	    <div class="media">
	        <div class="mr-3 font-weight-bold text-danger non_veg">.</div>
	        <div class="media-body">
	            <h6 class="mb-1">${mVo.memberMenuVo.menuName}</h6>
	            <p class="text-muted mb-0">${mVo.memberMenuVo.menuPrice}원</p>
	        </div>
	    </div>
	</div>
	<div class="modal fade" id="option${mVo.memberMenuVo.menuNo}" tabindex="-1" role="dialog" aria-labelledby="option" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">옵션선택</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body p-0">
                    <div class="osahan-filter">
                        <div class="filter">
                            <!-- 라디오버튼 -->
                            <div class="p-3 bg-light border-bottom">
                                <h6 class="m-0">SORT BY</h6>
                            </div>
                            <c:forEach var="oVo" items="${mVo.menuOptionList}">
	                            <div class="custom-control border-bottom px-0  custom-radio">
	                                <input type="radio" id="customRadio${oVo.mOptionNo }f" name="location" class="custom-control-input">
	                                <label class="custom-control-label py-3 w-100 px-3" for="customRadio${oVo.mOptionNo}f">${oVo.mOptionName} </label>
	                            </div>
                            </c:forEach>
                            <!-- 체크박스 -->
                            <div class="p-3 bg-light border-bottom">
                                <h6 class="m-0">FILTER</h6>
                            </div>
                            <c:forEach var="oVo" items="${mVo.menuOptionList}">
	                            <div class="custom-control border-bottom px-0  custom-checkbox">
	                                <input type="checkbox" class="custom-control-input" id="defaultCheck${oVo.mOptionNo}">
	                                <label class="custom-control-label py-3 w-100 px-3" for="defaultCheck${oVo.mOptionNo}">Open Now</label>
	                            </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <div class="modal-footer p-0 border-0">
                    <div class="col-6 m-0 p-0">
                        <button type="button" class="btn border-top btn-lg btn-block" data-dismiss="modal">Close</button>
                    </div>
                    <div class="col-6 m-0 p-0">
                        <button type="button" class="btn btn-primary btn-lg btn-block">Apply</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</c:forEach>
