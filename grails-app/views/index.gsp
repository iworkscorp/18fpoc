<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
</head>

<body>
<div id="wrapper">


    <!-- Page Content -->
    <div id="page-wrapper">
        <div class="container-fluid">


            <div style="margin-bottom:5px; padding-bottom:5px;padding-top:5px; margin-top:10px;">
                <table class="table">
                <tr>
                <td style="background-color:#489aee">
                    <p><h2 style="color:#ffffff">FDA Food Recall Geolocator</h2></p>
                </td>
                <td style="background-color: #5da9f6;color:white;">

                    <h5>Welcome</h5>

                 <p style="font-size:16px">You have entered our interactive webpage that displays various Food Recalls in each state. This site was created in part of an open source project headed by <a  style="color:white" href="http://open.fda.gov">open.fda.gov</a>
                    Our mission is to provide the general public an interactive way to find food recalls in each state! How do you navigate the page? Just simply click on the map and the table will filter based on your search criteria. Want to learn more about a particular recall?
                    Click on the row and a recall details window will pop up.
                 </p> 
                </td>
                </tr>
                </table>

           </div>
            <div class="row">

                <!-- /.col-lg-12 -->
            </div>

            <div class="row">
                <div class="col-lg-6">
                    <form class="form-horizontal" role="form" method="POST" id="scopeForm">
                        <div class="row">
                            <div class="cold-md-4 col-sm-4" style="margin-top:10px">
                                <div class="input-group"><span class="input-group-addon fdaColor"
                                                               id="recallStatuslbcl">Recall Status</span>

                                    <select name="status" class="form-control">
                                        <option value="COMP">Completed</option>
                                        <option value="Terminated">Terminated</option>
                                        <option value="Pending">Pending</option>
                                        <option value="OnGoing" selected="true">On-Going</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-sm-4" style="margin-top:10px">
                                <div class="input-group"><span class="input-group-addon fdaColor" id="basic-addon2">Search</span>

                                    <input type="text" class="form-control" aria-describedby="basic-addon1" id="search"
                                           name="search">
                                </div>
                            </div>

                            <div class="col-sm-3" style="margin-top:10px">
                                <div class="input-group"><span class="input-group-addon fdaColor" id="basic-addon3">State</span>

                                    <select name="state" class="form-control" id="state">
                                        <option value="NA"></option>
                                        <option value="AL">AL</option>
                                        <option value="AK">AK</option>
                                        <option value="AZ">AZ</option>
                                        <option value="AR">AR</option>
                                        <option value="CA">CA</option>
                                        <option value="CO">CO</option>
                                        <option value="CT">CT</option>
                                        <option value="DE">DE</option>
                                        <option value="DC">DC</option>
                                        <option value="FL">FL</option>
                                        <option value="GA">GA</option>
                                        <option value="HI">HI</option>
                                        <option value="ID">ID</option>
                                        <option value="IL">IL</option>
                                        <option value="IN">IN</option>
                                        <option value="IA">IA</option>
                                        <option value="KS">KS</option>
                                        <option value="KY">KY</option>
                                        <option value="LA">LA</option>
                                        <option value="ME">ME</option>
                                        <option value="MD">MD</option>
                                        <option value="MA">MA</option>
                                        <option value="MI">MI</option>
                                        <option value="MN">MN</option>
                                        <option value="MS">MS</option>
                                        <option value="MO">MO</option>
                                        <option value="MT">MT</option>
                                        <option value="NE">NE</option>
                                        <option value="NV">NV</option>
                                        <option value="NH">NH</option>
                                        <option value="NJ">NJ</option>
                                        <option value="NM">NM</option>
                                        <option value="NY">NY</option>
                                        <option value="NC">NC</option>
                                        <option value="ND">ND</option>
                                        <option value="OH">OH</option>
                                        <option value="OK">OK</option>
                                        <option value="OR">OR</option>
                                        <option value="PA">PA</option>
                                        <option value="RI">RI</option>
                                        <option value="SC">SC</option>
                                        <option value="SD">SD</option>
                                        <option value="TN">TN</option>
                                        <option value="TX">TX</option>
                                        <option value="UT">UT</option>
                                        <option value="VT">VT</option>
                                        <option value="VA">VA</option>
                                        <option value="WA">WA</option>
                                        <option value="WV">WV</option>
                                        <option value="WI">WI</option>
                                        <option value="WY">WY</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-sm-1" style="margin-top:10px">

                                <button type="button" class="btn btn-success" id="searchSubmit">Submit</button>
                            </div>
                        </div>
                    </form>

                </div>

                <div class="col-lg-6"></div>
            </div>

            <div class="row">
                <div class="col-lg-6 col-md-6 " style="position: relative;">
                    <div style=" position:relative;">
                        <div id="map" style="height: 100%;">
                        </div>
                    </div>
                    <div>
                    <h3><span class="fdaColor">Reading Your Results </span></h3>



                       <ul>
                           <li>
                               <p>
                                                          <strong class="fdaColor">Production Description:</strong> Is a brief description of the product being recalled issued by the recalling firm
                                                      </p>



                           </li>
                           <li>
                               <p>
                                                                                                             <strong class="fdaColor">Recalling Firm:</strong> Is a brief description of the product being recalled issued by the recalling firm
                                                                                                         </p>
                           </li>
                           <li>
                               <strong class="fdaColor">Class I: </strong>Dangerous or defective products that predictably could cause serious health problems or death. Examples include: food found to contain botulinum toxin, food with undeclared allergens, a label mix-up on a lifesaving drug, or a defective artificial heart valve.</p>
                           </li>
                           <li>
                               <strong class="fdaColor">Class II: </strong>Products that might cause a temporary health problem, or pose only a slight threat of a serious nature. Example: a drug that is under-strength but that is not used to treat life-threatening situations.</p>

                           </li>

                           <li><strong class="fdaColor">Class III: </strong>Products that are unlikely to cause any adverse health reaction, but that violate FDA labeling or manufacturing laws. Examples include: a minor container defect and lack of English labeling in a retail food.</li>

                       </ul>

                    </div>
                </div>

                <div class="col-lg-6 col-md-6" id="tblData">
                </div>

            </div>


            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->

</div>

<footer class="footer">
      <div class="container">
        <p class="text-muted">This website uses data provided by <a href="http://open.fda.gov">open.fda.gov</a></p>
      </div>
    </footer>

<div class="modal fade" role="dialog" aria-labelledby="gridSystemModalLabel" id="gridSystemModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title fdaColor" id="gridSystemModalLabel">Recall Details</h4>
      </div>
      <div class="modal-body">
        <div class="container-fluid">


        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


<script id="detailTemplate" type="x-tmpl-mustache">
    <table class="table table-striped">
<tr>
<td><strong class="fdaColor">Recall Reason:</strong></td>
<td>{{reason_for_recall}}
</tr>
<tr>
<td><strong class="fdaColor">Issue Date:</strong></td>
<td>{{formattedDate}}
</tr>
<tr>

<td><strong class="fdaColor">Recall Number:</strong></td>
<td>{{recall_number}}
</tr>
<tr>
<td><strong class="fdaColor">Recalling Firm:</strong></td>
<td>{{recalling_firm}}
</tr>
</table>
</script>
</body>
</html>
