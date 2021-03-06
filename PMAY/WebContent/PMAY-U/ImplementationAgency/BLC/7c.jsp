<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>BLC 7C</title>
    <script src="../../js/jquery-3.3.1.js"></script>
    <script src="../../js/materialize.js"></script>
    <!-- <script src="js/bootstrap.min.js"></script> -->
    <script src="../../js/material.js"></script>
    <!-- <link rel="stylesheet" href="css/bootstrap.min.css"> -->
    <link rel="stylesheet" href="../../css/materialize.css">
    <link rel="stylesheet" href="../../css/material.css">
    <link rel="stylesheet" href="../../css/style1.css">
    <script src="../../js/stateCity.js"></script>
    <script>
        $(document).ready(function() {
           $('select').material_select();
        });
     </script>
     
  <jsp:include page = "../../Headers/IA_Header.jspf"/>

        <nav class="header">
             <div class="nav-wrapper">
              <p style ="padding-left: 60px; font-size: 20px; padding-top:20px;">Beneficiary led Construction or Enhancement DPR</p >
             </div>    
        </nav>  
        <form action="http://localhost:8080/PMAY/BLC_ULB_DPR_Insert" method = "POST">
            <div class="row">
                 <div class="col input-field s3">
                        <select required name="stateName" onChange="changecat(this.value);">
                                <option value="">Select State</option>
                                <option value="Andhra Pradesh">ANDHRA PRADESH</option>
                                <option value="Arunachal Pradesh">ARUNACHAL PRADESH</option>
                                <option value="Assam">ASSAM</option>
                                <option value="Bihar">BIHAR</option>
                                <option value="Chandigarh">CHANDIGARH</option>
                                <option value="Chattisgarh">CHHATTISGARH</option>
                                <option value="Dadra and Nagar Haveli">DADRA AND NAGAR HAVELI</option>
                                <option value="Daman and Diu">DAMAN AND DIU</option>
                                <option value="Delhi">Delhi</option>
                                <option value="Goa">GOA</option>
                                <option value="Gujrat">GUJARAT</option>
                                <option value="Haryana">HARYANA</option>
                                <option value="Himachal Pradesh">HIMACHAL PRADESH</option>
                                <option value="Jammu and Kashmir">JAMMU AND KASHMIR</option>
                                <option value="Jharkhand">JHARKHAND</option>
                                <option value="Karnataka">KARNATAKA</option>
                                <option value="Kerela">KERALA</option>
                                <option value="Madhya Pradesh">MADHYA PRADESH</option>
                                <option value="Maharashtra">MAHARASHTRA</option>
                                <option value="Manipur">MANIPUR</option>
                                <option value="Meghalaya">MEGHALAYA</option>
                                <option value="Mizoram">MIZORAM</option>
                                <option value="Nagaland">NAGALAND</option>
                                <option value="Odisha">ODISHA</option>
                                <option value="Puducherry">PUDUCHERRY</option>
                                <option value="Punjab">PUNJAB</option>
                                <option value="Rajasthan">RAJASTHAN</option>
                                <option value="Sikkim">SIKKIM</option>
                                <option value="Tamil Nadu">TAMIL NADU</option>
                                <option value="Telangana">TELANGANA</option>
                                <option value="Tripura">TRIPURA</option>
                                <option value="Uttar Pradesh">UTTAR PRADESH</option>
                                <option value="Uttrakhand">UTTARAKHAND</option>
                                <option value="West Bengal">WEST BENGAL</option>
                        </select>
                </div>
            
                <div class="col input-field s3">
                  <select name="districtName" id="city">
                    <option value="">Name of the District </option>
                   </select>
                
            </div>

                <div class="row">
                        <div class="col input-field s3">
                            <input name="cityName" id="icon_prefix" type="text" class="validate">
                            <label for="icon_prefix">Name of the City </label>
                        </div>  
                </div>
                <div class="row">
                <div class="col input-field s3">
                        <input name="projectName" id="project_name" type="text" class="validate">
                        <label for="project_name">Project Name</label>
                </div>
            </div>
                               
            <div class="row">
                    <div class="col input-field s3">
                      <select name="SLNA_name">
                          <option value="">State Level Nodal Agency</option>
                          <option value="SLAC">SLAC</option>
                          <option value="SLSMC">SLSMC</option>
                      </select>
                   </div>
               
                   <div class="col input-field s3">
                      <select name="IA_name">
                          <option value="">Implementing Agency </option>
                          <option value="ULB">Urban Local Bodies</option>
                          <option value="DA">Development Authority</option>
                          <option value="HB">Housing Board</option>
                          <option value="UIT">Urban Improvement Trust</option>
                          <option value="SR">Slum Rehabilitation Agency</option>
                          <option value="PA">Private Agency</option>
                          <option value="DV">Developer</option>
                      </select>
               </div>
   </div>
                   <!--@--
                   <p class="row">Project Cost(In Lakhs):</p>-->
                     
                    <div class="row ewsBeneficiaries">
                   
                      <p class="row">No. of New Construction Beneficiaries covered in the Project:</p>
                      <div style="width:150px" class="col general">
                         <div class="input-field col ewsBeneficiaries">
                           <input name="newBenGnrl" id="icon_prefix" type="number" class="validate">
                           <label for="icon_prefix">General</label>
                         </div>
                       </div>
                       <div style="width:150px" class="col sc">
                          <div class="input-field col ewsBeneficiaries">
                            <input name="newBenSC" id="icon_prefix" type="number" class="validate">
                            <label for="icon_prefix">SC</label>
                          </div>
                       </div> 
                       <div style="width:150px" class="col st">
                              <div class="input-field col ewsBeneficiaries">
                                <input name="newBenST" id="icon_prefix" type="number" class="validate">
                                <label for="icon_prefix">ST</label>
                              </div>
                       </div>
                       <div style="width:150px" class="col obc">
                              <div class="input-field col ewsBeneficiaries">
                                <input name="newBenOBC" id="icon_prefix" type="number" class="validate">
                                <label for="icon_prefix">OBC</label>
                              </div>
                       </div>
                      <div style="width:150px" class="col minority">
                              <div class="input-field col ewsBeneficiaries ">
                                <input name="newBenMinority" id="icon_prefix" type="number" class="validate">
                                <label for="icon_prefix">Minority</label>
                              </div>
                      </div>
                    </div> 
                    <div class="row ewsBeneficiaries">
                        <p class="row">No. of Enhancement Beneficiaries covered in the Project:</p>
                        <div style="width:150px" class="col general">
                           <div class="input-field col ewsBeneficiaries">
                             <input name="oldBenGnrl" id="icon_prefix" type="number" class="validate">
                             <label for="icon_prefix">General</label>
                           </div>
                         </div>
                         <div style="width:150px" class="col sc">
                            <div class="input-field col ewsBeneficiaries">
                              <input name="oldBenSC" id="icon_prefix" type="number" class="validate">
                              <label for="icon_prefix">SC</label>
                            </div>
                         </div> 
                         <div style="width:150px" class="col st">
                                <div class="input-field col ewsBeneficiaries">
                                  <input name="oldBenST" id="icon_prefix" type="number" class="validate">
                                  <label for="icon_prefix">ST</label>
                                </div>
                         </div>
                         <div style="width:150px" class="col obc">
                                <div class="input-field col ewsBeneficiaries">
                                  <input name="oldBenOBC" id="icon_prefix" type="number" class="validate">
                                  <label for="icon_prefix">OBC</label>
                                </div>
                         </div>
                        <div style="width:150px" class="col minority">
                                <div class="input-field col ewsBeneficiaries ">
                                  <input name="oldBenMinority" id="icon_prefix" type="number" class="validate">
                                  <label for="icon_prefix">Minority</label>
                                </div>
                        </div>
                      </div>
                     <!--@-->
                     <div class="row">
                      <p class="col"> Whether Beneficiary have been selected as per PMAY Guidelines:</p>
                      <p class="col" style="margin-left:50px;">
                          <input required class="with-gap" name="pmayGuidelines" type="radio" id="test1" value = "1"/>
                          <label for="test1" >Yes</label>
                      </p>
                      <p class="col" style="margin-left:50px;">
                          <input required class="with-gap" name="pmayGuidelines" type="radio" id="test2" value = "0"/>
                          <label for="test2">No</label>
                      </p>
                      </div>
                      <!--@-->
              
                      <!--@-->
                      <div class="row">
                          <p class="col">Whether it has been ensured that selected Beneficiaries have rightfull ownership of the land?</p>
                        <p class="col" style="margin-left:50px;">
                              <input required class="with-gap" name="ownershipEnsured" type="radio" id="test3" value = "1"/>
                              <label for="test3" >Yes</label>
                          </p>
                          <p class="col" style="margin-left:50px;">
                              <input required class="with-gap" name="ownershipEnsured" type="radio" id="test4" value = "0"/>
                              <label for="test4">No</label>
                          </p>
                      </div>
                      <div class="row">
                          <p class="col">Whether building plan for all houses have been approved?</p>
                        <p class="col" style="margin-left:50px;">
                              <input required class="with-gap" name="buildingPlanApproval" type="radio" id="test30" value = "1"/>
                              <label for="test30" >Yes</label>
                          </p>
                          <p class="col" style="margin-left:50px;">
                              <input required class="with-gap" name="buildingPlanApproval" type="radio" id="test40" value = "0"/>
                              <label for="test40">No</label>
                          </p>
                      </div>
                      <!--@-->
                        <!--#-->
                        <p class="row">Govt. Grant required(Rs. 1.50 Lakh per eligible beneficiary)(Rs. In Lakhs):</p>
                        <div class="row houseGrant">
                            <div class="input-field col s3 houseGrant  ">
                              <input name="stateGrant" id="icon_prefix" type="number" class="validate" step = "0.01">
                              <label for="icon_prefix">State Grant(Rs. In Lakhs)</label>
                            </div>
                                 <div class="input-field col s3  houseGrant">
                                   <input name="ulbGrant" id="icon_prefix" type="number" class="validate" step = "0.01">
                                   <label for="icon_prefix">ULB Grant(Rs. In Lakhs)</label>
                          </div>
                          <div class="input-field col s3 houseGrant">
                                    <input name="benShare" id="icon_prefix" type="number" class="validate" step = "0.01">
                                    <label for="icon_prefix">Beneficiary Share(Rs. In Lakhs)</label>
                           </div>
                       </div>
                       <!--@-->
                        <div class="row">
                        <p class="col"> Whether technical Specification/design for housing have been ensured as per Indian Standards/NBC/State Norms:</p>
                                  <p class="col" style="margin-left:50px;">
                                      <input required class="with-gap" name="techSpecification" type="radio" id="test7" value = "1"/>
                                      <label for="test7" >Yes</label>
                                  </p>
                                  <p class="col" style="margin-left:50px;">
                                      <input required class="with-gap" name="techSpecification" type="radio" id="test8" value = "0"/>
                                      <label for="test8">No</label>
                                  </p>
                              </div>
                            </div>
                            <div class="row">
                                <p class="col">Whether it has been ensured that balance cost of construction is tied up with State Grant, ULB Grant and Beneficiary Share? </p>
                              <p class="col" style="margin-left:50px;">
                                      <input required class="with-gap" name="ensuredBalanceCost" type="radio" id="test9" value = "1"/>
                                      <label for="test9" >Yes</label>
                                  </p>
                                  <p class="col" style="margin-left:50px;">
                                      <input required class="with-gap" name="ensuredBalanceCost" type="radio" id="test10" value = "0"/>
                                      <label for="test10">No</label>
                                  </p>
                             </div> 
                            
         

                         <p>Whether trunk and line infrastructure is existing or being provisioned? </p>
                        <div class="row">
                            <p class="col">Water Supply: </p>
                          <p class="col" style="margin-left:50px;">
                                <input required class="with-gap" name="waterSupply" type="radio" id="test11" value = "1"/>
                                <label for="test11" >Yes</label>
                            </p>
                            <p class="col" style="margin-left:50px;">
                                <input required class="with-gap" name="waterSupply" type="radio" id="test12" value = "0"/>
                                <label for="test12">No</label>
                            </p>
                        </div>
                          <div class="row">
                              <p class="col">Sewrage Facility: </p>
                            <p class="col" style="margin-left:50px;">
                                  <input required class="with-gap" name="sewerageFacility" type="radio" id="test13" value = "1"/>
                                  <label for="test13" >Yes</label>
                              </p>
                              <p class="col" style="margin-left:50px;">
                                  <input required class="with-gap" name="sewerageFacility" type="radio" id="test14" value = "0"/>
                                  <label for="test14">No</label>
                              </p>
                          </div>
                         
             
                          <div class="row">
                              <p class="col">Road Facility </p>
                            <p class="col" style="margin-left:50px;">
                                  <input required class="with-gap" name="roadFacility" type="radio" id="test130" value = "1"/>
                                  <label for="test130" >Yes</label>
                              </p>
                              <p class="col" style="margin-left:50px;">
                                  <input required class="with-gap" name="roadFacility" type="radio" id="test140" value = "0"/>
                                  <label for="test140">No</label>
                              </p>
                          </div>
                                       
                          <div class="row">
                              <p class="col">Storm Water Drain </p>
                            <p class="col" style="margin-left:50px;">
                                  <input required class="with-gap" name="stormDrain" type="radio" id="test131" value = "1"/>
                                  <label for="test131" >Yes</label>
                              </p>
                              <p class="col" style="margin-left:50px;">
                                  <input required class="with-gap" name="stormDrain" type="radio" id="test141" value = "0"/>
                                  <label for="test141">No</label>
                              </p>
                          </div>
                          <div class="row">
                              <p class="col">External Electrification</p>
                            <p class="col" style="margin-left:50px;">
                                  <input required class="with-gap" name="externalElectrification" type="radio" id="test15" value = "1"/>
                                  <label for="test15" >Yes</label>
                              </p>
                              <p class="col" style="margin-left:50px;">
                                  <input required class="with-gap" name="externalElectrification" type="radio" id="test16" value = "0"/>
                                  <label for="test16">No</label>
                              </p>
                          </div>
                          <div class="row">
                              <p class="col">Solid Waste Management</p>
                            <p class="col" style="margin-left:50px;">
                                  <input required class="with-gap" name="solidWasteManagement" type="radio" id="test17" value = "1"/>
                                  <label for="test17" >Yes</label>
                              </p>
                              <p class="col" style="margin-left:50px;">
                                  <input required class="with-gap" name="solidWasteManagement" type="radio" id="test18" value = "0"/>
                                  <label for="test18">No</label>
                              </p>
                          </div>
                             <!-- <div class="row other"> -->
                                  <div class="input-field row s12">
                                    <input name="anyOtherRequirement" id="icon_prefix" type="text" class="validate">
                                    <label for="icon_prefix">Any Other</label>
                                  </div>
                                  
                             <!-- </div> -->
                            <!--@-->
                            <div class="row">
                                <p class="col"> Whether disaster resistent features have been adopted 
                                    in concept,design and implementation of the project? </p>
                              <p class="col" style="margin-left:50px;">
                                  <input required class="with-gap" name="disasterResistence" type="radio" id="test21" value = "1"/>
                                  <label for="test21" >Yes</label>
                              </p>
                              <p class="col" style="margin-left:50px;">
                                  <input required class="with-gap" name="disasterResistence" type="radio" id="test22" value = "0"/>
                                  <label for="test22">No</label>
                              </p>
                            </div>
                            <div class="row">
                                <p class="col"> Whether Demand Survey completed for entire city? </p>
                                <p class="col" style="margin-left:50px;">
                                    <input required class="with-gap" name="demandSurvey" type="radio" id="test23" value = "1"/>
                                    <label for="test23" >Yes</label>
                                </p>
                                <p class="col" style="margin-left:50px;">
                                    <input required class="with-gap" name="demandSurvey" type="radio" id="test24" value = "0"/>
                                    <label for="test24">No</label>
                                </p>
                            </div>
                            
                               <div class="row">
                                  <p class="col">Whether city-wide integrated project have been formulated?</p>
                                  <p class="col" style="margin-left:50px;">
                                      <input required class="with-gap" name="cityWideurvey" type="radio" id="test25" value = "1"/>
                                      <label for="test25" >Yes</label>
                                  </p>
                                  <p class="col" style="margin-left:50px;">
                                      <input required class="with-gap" name="cityWideurvey" type="radio" id="test26" value = "0"/>
                                      <label for="test26">No</label>
                                  </p>
                              </div>
                               <div class="row">
                                <p class="col">Whether validation with SECC date for housing condition conducted?</p>
                                  <p class="col" style="margin-left:50px;">
                                      <input required class="with-gap" name="validationWithSECC" type="radio" id="test27" value = "1"/>
                                      <label for="test27" >Yes</label>
                                  </p>
                                  <p class="col" style="margin-left:50px;">
                                      <input required class="with-gap" name="validationWithSECC" type="radio" id="test28" value = "0"/>
                                      <label for="test28">No</label>
                                  </p>
                              </div>
                               
                               <div class="row">
                                  <p class="col">Whether direct benefit transfer of fund to individual bank account of beneficiary ensured in the project?</p>
                                  <p class="col" style="margin-left:50px;">
                                        <input required class="with-gap" name="directBenefitTransfer" type="radio" id="test290" value = "1"/>
                                        <label for="test290" >Yes</label>
                                    </p>
                                    <p class="col" style="margin-left:50px;">
                                        <input required class="with-gap" name="directBenefitTransfer" type="radio" id="test300" value = "0"/>
                                        <label for="test300">No</label>
                                    </p>
                                </div>
                                <div class="row">
                                       <p class="col">Whether there is provision in DPR for tracking/monitoring the progress of individual houses through geo-tagged photographs?</p>
                                       <p class="col" style="margin-left:50px;">
                                             <input required class="with-gap" name="geoTagInDPR" type="radio" id="test31" value = "1"/>
                                             <label for="test31" >Yes</label>
                                         </p>
                                         <p class="col" style="margin-left:50px;">
                                             <input required class="with-gap" name="geoTagInDPR" type="radio" id="test32" value = "0"/>
                                             <label for="test32">No</label>
                                    </p>
                                </div>
                                <div class="row">
                                       <p class="col">Whether any innovative/cost Effective/Green Technology adopted in the project?</p>
                                       <p class="col" style="margin-left:50px;">
                                             <input required class="with-gap" name="innovativeProject" type="radio" id="test33" value = "1"/>
                                             <label for="test33" >Yes</label>
                                         </p>
                                         <p class="col" style="margin-left:50px;">
                                             <input required class="with-gap" name="innovativeProject" type="radio" id="test34" value = "0"/>
                                             <label for="test34">No</label>
                                    </p>
                                </div>
                                  <div class="row">
                                  <div class="col input-field s12">
                                          <input name="otherInfo" id="otherInfo" type="text" class="validate">
                                          <label for="projectBrief">Project Brief including any other information ULB/State would like to furnish</label>
                                  </div>
                              </div>
                                <div class="row number">
                                          <div class="input-field col proName">
                                              <button name="submitbtn" type="submit" class="waves-effect waves-light btn fbtn">Submit</button>
                                </div>
                      
        </form>
    <jsp:include page = "../../Footers/IA_Footer.jspf"/>
