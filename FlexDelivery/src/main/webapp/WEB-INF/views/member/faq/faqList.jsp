<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../memInc/top.jsp"%>
<div class="osahan-home-page">
	<div class="bg-primary p-3 d-none">
		<div class="text-white">
			<div class="title d-flex align-items-center">
				<a class="toggle"
					href="<c:url value='/resources/memberResources/#' />"> <span></span>
				</a>
				<h4 class="font-weight-bold m-0 pl-5">고객센터</h4>
			</div>
		</div>
	</div>
	<!-- profile -->
	<div class="container position-relative">
		<div class="py-5 osahan-profile row">
			<div class="col-md-12 mb-12">
				<div class="osahan-cart-item-profile">
					<div class="box bg-white mb-3 shadow-sm rounded">
						<div class="p-3 d-flex align-items-center">
							<i class="feather-message-circle display-4"></i>
							<div class="ml-3">
								<h6 class="text-dark mb-2 mt-0">Help Forum</h6>
								<p class="mb-0 text-muted">Find the answer to any question,
									from the basics ...</p>
							</div>
						</div>
						<div
							class="overflow-hidden border-top d-flex align-items-center p-3">
							<a class="font-weight-bold d-block" href="#"> Swiggiweb Help
								Forum. </a> <i
								class="feather-arrow-right-circle ml-auto text-primary"></i>
						</div>
					</div>
					<div class="box bg-white mb-3 shadow-sm rounded">
						<div class="p-3 d-flex align-items-center">
							<i class="feather-lock display-4"></i>
							<div class="ml-3">
								<h6 class="text-dark mb-2 mt-0">1:1문의</h6>
								<p class="mb-0 text-muted">한놈씩덤벼</p>
							</div>
						</div>
						<div
							class="overflow-hidden border-top d-flex align-items-center p-3">
							<a class="font-weight-bold d-block"
								href="<c:url value='/member/askWrite.do'/>">이동</a> <i
								class="feather-arrow-right-circle ml-auto text-primary"></i>
						</div>
					</div>
					<c:import url="/member/faq/faqQ.do">
						<c:param name="faq"></c:param>
					</c:import>
					
					<!-- <div id="basics">
						Title
						<div class="mb-2 mt-3">
							<h5 class="font-weight-semi-bold mb-0">Basics</h5>
						</div>
						End Title
						Basics Accordion
						<div id="basicsAccordion">
							Card
							<div class="box border-bottom bg-white mb-2 rounded shadow-sm overflow-hidden">
								<div id="basicsHeadingOne">
									<h5 class="mb-0">
										<button
											class="shadow-none btn btn-block d-flex justify-content-between card-btn p-3 collapsed"
											data-toggle="collapse" data-target="#basicsCollapseOne"
											aria-expanded="false" aria-controls="basicsCollapseOne">
											Do you have any built-in caching? <span
												class="card-btn-arrow"> <span
												class="feather-chevron-down"></span>
											</span>
										</button>
									</h5>
								</div>
								<div id="basicsCollapseOne" class="collapse show"
									aria-labelledby="basicsHeadingOne"
									data-parent="#basicsAccordion" style="">
									<div class="card-body border-top p-3 text-muted">Anim
										pariatur cliche reprehenderit, enim eiusmod high life
										accusamus terry richardson ad squid ...</div>
								</div>
							</div>
							<div class="box border-bottom bg-white mb-2 rounded shadow-sm overflow-hidden">
								<div id="basicsHeadingTwo">
									<h5 class="mb-0">
										<button
											class="shadow-none btn btn-block d-flex justify-content-between card-btn p-3 collapsed"
											data-toggle="collapse" data-target="#basicsCollapseTwo"
											aria-expanded="false" aria-controls="basicsCollapseTwo">
											Can I add/upgrade my plan at any time? <span
												class="card-btn-arrow"> <span
												class="feather-chevron-down"></span>
											</span>
										</button>
									</h5>
								</div>
								<div id="basicsCollapseTwo" class="collapse"
									aria-labelledby="basicsHeadingTwo"
									data-parent="#basicsAccordion" style="">
									<div class="card-body border-top p-3 text-muted">Anim
										pariatur cliche reprehenderit, enim eiusmod high life
										accusamus terry richardson ad squid ...</div>
								</div>
							</div>
							<div class="box border-bottom bg-white mb-2 rounded shadow-sm overflow-hidden">
								<div id="basicsHeadingThree">
									<h5 class="mb-0">
										<button
											class="shadow-none btn btn-block d-flex justify-content-between card-btn p-3 collapsed"
											data-toggle="collapse" data-target="#basicsCollapseThree"
											aria-expanded="false" aria-controls="basicsCollapseThree">
											What access comes with hosting plan? <span
												class="card-btn-arrow"> <span
												class="feather-chevron-down"></span>
											</span>
										</button>
									</h5>
								</div>
								<div id="basicsCollapseThree" class="collapse"
									aria-labelledby="basicsHeadingThree"
									data-parent="#basicsAccordion" style="">
									<div class="card-body border-top p-3 text-muted">Anim
										pariatur cliche reprehenderit, enim eiusmod high life
										accusamus terry richardson ad squid ...</div>
								</div>
							</div>
							<div
								class="box border-bottom bg-white mb-2 rounded shadow-sm overflow-hidden">
								<div id="basicsHeadingFour">
									<h5 class="mb-0">
										<button
											class="shadow-none btn btn-block d-flex justify-content-between card-btn collapsed p-3"
											data-toggle="collapse" data-target="#basicsCollapseFour"
											aria-expanded="false" aria-controls="basicsCollapseFour">
											How do I change my password? <span class="card-btn-arrow">
												<span class="feather-chevron-down"></span>
											</span>
										</button>
									</h5>
								</div>
								<div id="basicsCollapseFour" class="collapse"
									aria-labelledby="basicsHeadingFour"
									data-parent="#basicsAccordion">
									<div class="card-body border-top p-3 text-muted">Anim
										pariatur cliche reprehenderit, enim eiusmod high life
										accusamus terry richardson ad squid ...</div>
								</div>
							</div>
							End Card
						</div>
						End Basics Accordion
					</div> -->
					<div id="account">
						<!-- Title -->
						<div class="mb-2 mt-3">
							<h5 class="font-weight-semi-bold mb-0">Account</h5>
						</div>
						<!-- End Title -->
						<!-- Account Accordion -->
						<div id="accountAccordion">
							<!-- Card -->
							<div class="box border-bottom bg-white mb-2 rounded shadow-sm overflow-hidden">
								<div id="accountHeadingOne">
									<h5 class="mb-0">
										<button
											class="shadow-none btn btn-block d-flex justify-content-between card-btn p-3"
											data-toggle="collapse" data-target="#accountCollapseOne"
											aria-expanded="false" aria-controls="accountCollapseOne">
											How do I change my password? <span class="card-btn-arrow">
												<span class="feather-chevron-down"></span>
											</span>
										</button>
									</h5>
								</div>
								<div id="accountCollapseOne" class="collapse show"
									aria-labelledby="accountHeadingOne"
									data-parent="#accountAccordion">
									<div class="card-body border-top p-3 text-muted">Anim
										pariatur cliche reprehenderit, enim eiusmod high life
										accusamus terry richardson ad squid ...</div>
								</div>
							</div>
							<!-- End Card -->
							<!-- Card -->
							<div class="box border-bottom bg-white mb-2 rounded shadow-sm overflow-hidden">
								<div id="accountHeadingTwo">
									<h5 class="mb-0">
										<button
											class="shadow-none btn btn-block d-flex justify-content-between card-btn collapsed p-3"
											data-toggle="collapse" data-target="#accountCollapseTwo"
											aria-expanded="false" aria-controls="accountCollapseTwo">
											How do I delete my account? <span class="card-btn-arrow">
												<span class="feather-chevron-down"></span>
											</span>
										</button>
									</h5>
								</div>
								<div id="accountCollapseTwo" class="collapse"
									aria-labelledby="accountHeadingTwo"
									data-parent="#accountAccordion">
									<div class="card-body border-top p-3 text-muted">Anim
										pariatur cliche reprehenderit, enim eiusmod high life
										accusamus terry richardson ad squid ...</div>
								</div>
							</div>
							<!-- End Card -->
							<!-- Card -->
							<div class="box border-bottom bg-white mb-2 rounded shadow-sm overflow-hidden">
								<div id="accountHeadingThree">
									<h5 class="mb-0">
										<button
											class="shadow-none btn btn-block d-flex justify-content-between card-btn collapsed p-3"
											data-toggle="collapse" data-target="#accountCollapseThree"
											aria-expanded="false" aria-controls="accountCollapseThree">
											How do I change my account settings? <span
												class="card-btn-arrow"> <span
												class="feather-chevron-down"></span>
											</span>
										</button>
									</h5>
								</div>
								<div id="accountCollapseThree" class="collapse"
									aria-labelledby="accountHeadingThree"
									data-parent="#accountAccordion">
									<div class="card-body border-top p-3 text-muted">Anim
										pariatur cliche reprehenderit, enim eiusmod high life
										accusamus terry richardson ad squid ...</div>
								</div>
							</div>
							<!-- End Card -->
							<!-- Card -->
							<div class="box border-bottom bg-white mb-2 rounded shadow-sm overflow-hidden">
								<div id="accountHeadingFour">
									<h5 class="mb-0">
										<button
											class="shadow-none btn btn-block d-flex justify-content-between card-btn collapsed p-3"
											data-toggle="collapse" data-target="#accountCollapseFour"
											aria-expanded="false" aria-controls="accountCollapseFour">
											I forgot my password. How do I reset it? <span
												class="card-btn-arrow"> <span
												class="feather-chevron-down"></span>
											</span>
										</button>
									</h5>
								</div>
								<div id="accountCollapseFour" class="collapse"
									aria-labelledby="accountHeadingFour"
									data-parent="#accountAccordion">
									<div class="card-body border-top p-3 text-muted">Anim
										pariatur cliche reprehenderit, enim eiusmod high life
										accusamus terry richardson ad squid ...</div>
								</div>
							</div>
							<!-- End Card -->
						</div>
						<!-- End Account Accordion -->
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@include file="../../memInc/bottom.jsp"%>