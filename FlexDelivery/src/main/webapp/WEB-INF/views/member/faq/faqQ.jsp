<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


	<div id="basics">
		<!-- Title -->
		<div class="mb-2 mt-3">
			<h5 class="font-weight-semi-bold mb-0">Basics</h5>
		</div>
		<!-- End Title -->
		<!-- Basics Accordion -->
		<div id="basicsAccordion">
			<!-- Card -->
			<div
				class="box border-bottom bg-white mb-2 rounded shadow-sm overflow-hidden">
				<div id="basicsHeadingOne">
					<h5 class="mb-0">
						<button
							class="shadow-none btn btn-block d-flex justify-content-between card-btn p-3 collapsed"
							data-toggle="collapse" data-target="#basicsCollapseOne"
							aria-expanded="false" aria-controls="basicsCollapseOne">
							Do you have any built-in caching? <span class="card-btn-arrow">
								<span class="feather-chevron-down"></span>
							</span>
						</button>
					</h5>
				</div>
				<div id="basicsCollapseOne" class="collapse show"
					aria-labelledby="basicsHeadingOne" data-parent="#basicsAccordion"
					style="">
					<div class="card-body border-top p-3 text-muted">Anim
						pariatur cliche reprehenderit, enim eiusmod high life accusamus
						terry richardson ad squid ...</div>
				</div>
			</div>
			<div
				class="box border-bottom bg-white mb-2 rounded shadow-sm overflow-hidden">
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
					aria-labelledby="basicsHeadingTwo" data-parent="#basicsAccordion"
					style="">
					<div class="card-body border-top p-3 text-muted">Anim
						pariatur cliche reprehenderit, enim eiusmod high life accusamus
						terry richardson ad squid ...</div>
				</div>
			</div>
			<div
				class="box border-bottom bg-white mb-2 rounded shadow-sm overflow-hidden">
				<div id="basicsHeadingThree">
					<h5 class="mb-0">
						<button
							class="shadow-none btn btn-block d-flex justify-content-between card-btn p-3 collapsed"
							data-toggle="collapse" data-target="#basicsCollapseThree"
							aria-expanded="false" aria-controls="basicsCollapseThree">
							What access comes with hosting plan? <span class="card-btn-arrow">
								<span class="feather-chevron-down"></span>
							</span>
						</button>
					</h5>
				</div>
				<div id="basicsCollapseThree" class="collapse"
					aria-labelledby="basicsHeadingThree" data-parent="#basicsAccordion"
					style="">
					<div class="card-body border-top p-3 text-muted">Anim
						pariatur cliche reprehenderit, enim eiusmod high life accusamus
						terry richardson ad squid ...</div>
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
					aria-labelledby="basicsHeadingFour" data-parent="#basicsAccordion">
					<div class="card-body border-top p-3 text-muted">Anim
						pariatur cliche reprehenderit, enim eiusmod high life accusamus
						terry richardson ad squid ...</div>
				</div>
			</div>
			<!-- End Card -->
		</div>
		<!-- End Basics Accordion -->
	</div>
