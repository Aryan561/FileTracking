<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/Employee.Master" AutoEventWireup="true" CodeBehind="StatusReport.aspx.cs" Inherits="FMATS.Employee.StatusReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Content/Plugins/datepicker/datepicker3.css" rel="stylesheet" />
    <script src="../Content/Plugins/datepicker/bootstrap-datepicker.js"></script>
    <section class="content">


        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-th"></i>Status Report </h3>
                    </div>
                    <div class="panel-body">

                        <form class="form-horizontal" id="frmLeave" action="#" method="post">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="row">

                                        <div class="col-md-3">


                                            <div class="form-group">

                                                <label for="ddlMonth" class="col-sm-3 control-label">
                                                    Month
                                                </label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="ddlMonth" id="ddlMonth">
                                                        <option selected="selected" value="1">January</option>
                                                        <option value="2">February</option>
                                                        <option value="3">March</option>
                                                        <option value="4">April</option>
                                                        <option value="5">May</option>
                                                        <option value="6">June</option>
                                                        <option value="7">July</option>
                                                        <option value="8">August</option>
                                                        <option value="9">September</option>
                                                        <option value="10">October</option>
                                                        <option value="11">November</option>
                                                        <option value="12">December</option>
                                                    </select>
                                                </div>
                                            </div>





                                        </div>
                                        <div class="col-md-3">

                                            <div class="form-group">

                                                <label for="ddlLeaveType" class="col-sm-3 control-label">
                                                    Year
                                                </label>
                                                <div class="col-sm-9">

                                                    <select class="form-control" name="ddlYear" id="ddlYear">
                                                        <option value="2015">2015</option>
                                                        <option selected="selected" value="2016">2016</option>
                                                    </select>

                                                </div>
                                            </div>




                                        </div>

                                        <div class="col-md-3">

                                            <div>
                                                <label class="radio-inline">
                                                    <input type="radio" value="1" checked name="optradio">Bi-Monthly (1st Half)
                                                </label>
                                                <label class="radio-inline">
                                                    <input type="radio" value="2" name="optradio">Bi-Monthly (2nd Half)
                                                </label>
                                            </div>

                                        </div>

                                        <div class="col-md-3">

                                            <input type="button" id="btnSubmit" value="Submit" class="btn btn-primary">
                                            <input type="button" class="btn btn-danger cancelbutton" value="Cancel">


                                            <!-- <button type="submit" class="btn btn-primary">Submit</button> -->
                                            <!-- <button type="submit" class="btn btn-danger">Cancel</button> -->

                                        </div>

                                    </div>
                                </div>
                            </div>

                        </form>

                    </div>

                </div>
                <!-- /.table-responsive -->
            </div>
            <!-- /.panel-body -->

        </div>
        <!-- /.panel panel-default -->

        <div class="row" id="divTimeSheet" style="display: none">

            <div class="col-xs-12">
                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title" id="h3TimeSheetTitle" style="color: #fb773d"></h3>

                        <!-- <div class="box-tools"> -->
                        <!-- <div class="input-group input-group-sm" style="width: 150px;"> -->
                        <!-- <input type="text" name="table_search" class="form-control pull-right" placeholder="Search"> -->

                        <!-- <div class="input-group-btn"> -->
                        <!-- <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button> -->
                        <!-- </div> -->
                        <!-- </div> -->
                        <!-- </div> -->
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body table-responsive">
                        <table class="table table-hover table-striped" id="tblTimeSheet">
                            <tbody>
                            </tbody>
                        </table>
                    </div>

                    <p></p>



                    <!-- /.box-body -->
                    <div class="box-footer">

                        <div>
                            <div id="dvTotHours" align="right" style="padding: 10px; font-size: 18px; font-weight: bold; background: #EAEAEA; color: #000">Total: 0 Hours</div>
                        </div>

                        <h4 class="box-title" style="color: #fb773d">Additional Comments</h3>
			
			<textarea class="form-control" rows="2" id="txtcomment">
			</textarea>

                            <p></p>

                            <div class="col-md-offset-8 col-md-12 col-sm-offset-8 col-sm-12">
                                <button type="submit" class="btn btn-primary">Save & Close</button>
                                <button type="submit" class="btn btn-primary">Save & Send Time Sheet</button>
                                <input type="button" class="btn btn-danger cancelbutton" value="Cancel">
                                <!-- <button type="submit" class="btn btn-danger">Cancel</button> -->
                            </div>
                    </div>
                </div>
                <!-- /.box -->
            </div>



        </div>

    </section>
    <script type="text/javascript">


        $(function () {



            $(".cancelbutton").click(function () {

                $("#divTimeSheet").hide();

            });

            $("#btnSubmit").click(function () {

                BuiltTimeSheet();

            });




            var startDate;
            var endDate;

            var selectCurrentWeek = function () {
                window.setTimeout(function () {
                    $('.selectWeek').find('.ui-datepicker-current-day a').addClass('ui-state-active')
                }, 1);
            }

            $('.selectWeek').datepicker({
                //dateFormat: "dd/mm/yy",
                dateFormat: "mm/dd/yy",
                showOtherMonths: true,
                selectOtherMonths: true,
                onSelect: function (dateText, inst) {
                    var date = $(this).datepicker('getDate');
                    startDate = new Date(date.getFullYear(), date.getMonth(), date.getDate() - date.getDay());
                    endDate = new Date(date.getFullYear(), date.getMonth(), date.getDate() - date.getDay() + 6);
                    var dateFormat = inst.settings.dateFormat || $.datepicker._defaults.dateFormat;
                    $('#weekStartDate').val($.datepicker.formatDate(dateFormat, startDate, inst.settings));
                    $('#weekEndDate').val($.datepicker.formatDate(dateFormat, endDate, inst.settings));
                    selectCurrentWeek();
                },
                beforeShowDay: function (date) {
                    var cssClass = '';
                    if (date >= startDate && date <= endDate)
                        cssClass = 'ui-datepicker-current-day';
                    return [true, cssClass];
                },
                onChangeMonthYear: function (year, month, inst) {
                    selectCurrentWeek();
                }
            });

            $('.selectWeek .ui-datepicker-calendar tr').on('mousemove', function () { $(this).find('td a').addClass('ui-state-hover'); });
            $('.selectWeek .ui-datepicker-calendar tr').on('mouseleave', function () { $(this).find('td a').removeClass('ui-state-hover'); });

        });


        function BuiltTimeSheet() {
            debugger;
            var month = $("#ddlMonth option:selected").val();
            var monthtext = $("#ddlMonth option:selected").text();
            var year = $("#ddlYear option:selected").val();

            $("#dvTotHours").html("Total : 0 hrs")
            $("#h3TimeSheetTitle").html("");


            var dropdown = '<select name="ddlTask"  > <option selected="selected" value="1">-- None --</option> <option value="5">Bug Fixes</option>	<option value="8">Business Analysis</option> 	<option value="13">Deployment</option> 	<option value="2">Designing</option> 	<option value="7">Dev Ops</option> 	<option value="3">Development</option> 	<option value="6">Lawson Support</option> 	<option value="19">Marketing &amp; Social Media</option> 	<option value="14">Production Support</option> 	<option value="15">Program Management</option> 	<option value="16">Project Management</option> 	<option value="20">Recruitment</option> 	<option value="12">Release Management</option> 	<option value="21">Remote Support</option> 	<option value="11">Requirements Engineering</option> 	<option value="10">Requirements Gathering</option> 	<option value="9">System Analysis</option> 	<option value="18">System Upgrade &amp; Maintenance</option> 	<option value="4">Testing</option> 	<option value="17">Web Design</option> </select>';

            //var textbox="<input name='txtHours' class='form-control' type='text' value='0:00' maxlength='5' id='txtHours' onblur='setTotalHours(txtHours)'>";
            var textbox = "<input name='txtHours' class='form-control loggedhours' type='text' value='0:00' maxlength='5' id='txtHours' onblur='setTotalHours(txtHours)'>";

            var d = new Date();
            var weekday = new Array(7);
            weekday[0] = "Sunday";
            weekday[1] = "Monday";
            weekday[2] = "Tuesday";
            weekday[3] = "Wednesday";
            weekday[4] = "Thursday";
            weekday[5] = "Friday";
            weekday[6] = "Saturday";

            var n = weekday[d.getDay()];

            $("#tblTimeSheet").html("");

            var temp = '<table class="table table-hover"><tbody> <tr> <th>Date</th> <th>Task</th> <th>Hours</th> </tr> '

            $("#tblTimeSheet").html(temp);

            var tempTimeString = "<tr> <th>Date</th> <th>Task</th> <th>Hours</th> </tr>";

            if ($("input[name=optradio]:checked").val() == "1") {

                $("#h3TimeSheetTitle").html("Timesheet for the Period of " + monthtext + " 1, " + year + " to " + monthtext + " 15, " + year + " ");

                // for the first half of the month
                for (var x = 1; x <= 15; x++) {



                    var tempdate = (month) + '/' + x + "/" + year;
                    var day = new Date(tempdate);
                    var datepart = weekday[day.getDay()] + " " + $("#ddlMonth option:selected").text() + " " + x + " " + $("#ddlYear option:selected").text();
                    // Date
                    tempTimeString += '<tr><td>' + datepart + '</td>';
                    // DropDown
                    tempTimeString += '<td> ' + dropdown + ' </td>';

                    //hoursbox
                    //tempTimeString+="<td><input name='uc_"+x+"txtHours' class='txtTimeSpent' type='text' value='0:00' maxlength='5' id='uc_"+x+"txtHours'> </td></tr>";		
                    tempTimeString += "<td><input name='uc_" + x + "txtHours' class='txtTimeSpent' type='text' value='0:00' maxlength='5' id='uc_" + x + "txtHours' onblur='setTotalHours(uc_" + x + "txtHours)'> </td></tr>";

                    //hoursbox
                    //tempTimeString+='<td > '+textbox+' </td></tr>';
                    //tempTimeString+="<td > '+textbox+' </td></tr>";

                    //tempTimeString+='</tbody>';  
                    //$("#tblTimeSheet").html(tempTimeString);

                }

            } else {

                var daysinmonth = new Date(year, month, 0).getDate();

                $("#h3TimeSheetTitle").html("Timesheet for the Period of " + monthtext + " 16, " + year + " to " + monthtext + " " + daysinmonth + ", " + year + " ");

                // for the second half of the month
                for (var x = 16; x <= daysinmonth; x++) {

                    //if(x=="31"){

                    var tempdate = (month) + '/' + x + "/" + year;

                    var day = new Date(tempdate);
                    var datepart = weekday[day.getDay()] + " " + $("#ddlMonth option:selected").text() + " " + x + " " + $("#ddlYear option:selected").text();
                    // Date
                    tempTimeString += '<tr><td>' + datepart + '</td>';
                    // DropDown
                    tempTimeString += '<td> ' + dropdown + ' </td>';

                    //hoursbox
                    //tempTimeString+="<td><input name='uc_"+x+"txtHours' class='txtTimeSpent' type='text' value='0:00' maxlength='5' id='uc_"+x+"txtHours'> </td></tr>";		
                    tempTimeString += "<td><input name='uc_" + x + "txtHours' class='txtTimeSpent' type='text' value='0:00' maxlength='5' id='uc_" + x + "txtHours' onblur='setTotalHours(uc_" + x + "txtHours)'> </td></tr>";

                    //hoursbox
                    //tempTimeString+='<td > '+textbox+' </td></tr>';
                    //tempTimeString+="<td > '+textbox+' </td></tr>";

                    //tempTimeString+='</tbody>';  
                    //$("#tblTimeSheet").html(tempTimeString);

                    //}


                }

            }


            tempTimeString += '</tbody>';
            $("#tblTimeSheet").html(tempTimeString);
            $("#divTimeSheet").show();

        }



        function showEpTs() {
            document.getElementById('epTimesheet').style.display = '';
        }
        function hideEpTs() {
            document.getElementById('epTimesheet').style.display = 'none';
        }
        function openpopup(url) {
            window.open(url, 'timesheet', 'width=750,height=800');
        }



        function IsNumeric(strString) {
            var strValidChars = "0123456789:";
            var strChar;
            var blnResult = true;

            if (strString.length == 0) return false;

            //  test strString consists of valid characters listed above
            for (i = 0; i < strString.length && blnResult == true; i++) {
                strChar = strString.charAt(i);
                if (strValidChars.indexOf(strChar) == -1) {
                    blnResult = false;
                }
            }
            return blnResult;
        }

        function IsColan(strString) {
            var blnResult = false;

            if (strString.length == 0) return false;
            if (strString.indexOf(':') > 0) {
                blnResult = true;
            }
            return blnResult;
        }

        function IsDecimal(strString) {
            var blnResult = false;

            if (strString.length == 0) return false;
            if (strString.indexOf(".") > 0) {
                blnResult = true;
            }
            return blnResult;
        }

        function validateHours(value) {
            var regExp = /^\d+(?:\:\d{1,2})?$/;

            if (regExp.test(value)) {
                return true;
            } else {
                return false;
            }
        }


        function ConfirmSendTimesheet() {
            var returnVal = confirm('Are you sure, do you want to send the timesheet?');
            return returnVal;
        }

        function ConfirmClose() {
            var returnVal = confirm('Remember to save your timesheet before leaving. Click OK to leave, or click Cancel to go back and save.');
            return returnVal;
        }

        function setTotalHours(objCtrl) {
            var intHours = 0;
            var intTotHours = 0;
            var intTotMinutes = 0;
            var intTempHours = 0;
            var intTempMinutes = 0;
            var intTempTotHours = 0;
            var cntrl;
            var intCnt;
            var strVal;
            var minutes;
            var roundedHoures;

            strVal = document.getElementById(objCtrl.id).value;
            if (validateHours(strVal) == false) {
                alert("Invalid hours format");
                document.getElementById(objCtrl.id).value = '0:00';
                document.getElementById(objCtrl.id).focus();
                return;
            }
            intHours = document.getElementById(objCtrl.id).value.replace(':', '.');

            if (intHours > 23) {
                alert("Hours should be less then or equal to 23");
                document.getElementById(objCtrl.id).value = '0:00';
                document.getElementById(objCtrl.id).focus();
                return;
            }

            minutes = intHours % 1;
            if (minutes >= .59) {
                alert("Minutes should be less then or equal to 59");
                document.getElementById(objCtrl.id).value = '0:00';
                document.getElementById(objCtrl.id).focus();
                return;
            }


            $(".txtTimeSpent").each(function (index) {

                if ($(this).val() != '0.0') {
                    intHours = $(this).val();

                    if (IsColan(intHours)) {
                        intTotHours = Number(intTotHours) + parseInt(intHours.toString().split(":")[0]);
                        //intTotMinutes = intTotMinutes + (intHours % 1 * 100);
                        intTotMinutes = intTotMinutes + parseInt(intHours.toString().split(":")[1]);
                    }
                    else {
                        intTotHours = Number(intTotHours) + Number(intHours);
                    }
                }

            });

            < !-- for (intCnt = 0; intCnt < 32; intCnt++) {
                -->
                < !--cntrl = 'uc' + intCnt + '_txtHours'; -->
				< !-- if (document.getElementById(cntrl) != null) {
                    -->
                    < !--intHours = document.getElementById(cntrl).value; -->

                    < !-- if (IsColan(intHours)) {
                        -->
                        < !--intTotHours = Number(intTotHours) + parseInt(intHours.toString().split(":")[0]); -->
                        < !-- //intTotMinutes = intTotMinutes + (intHours % 1 * 100); -->
                        < !--intTotMinutes = intTotMinutes + parseInt(intHours.toString().split(":")[1]); -->
                    < !-- } -->
                    < !-- else {
                        -->
                        < !--intTotHours = Number(intTotHours) + Number(intHours); -->
                    < !-- } -->
                < !-- } -->
            < !-- } -->

            var displayTotalHours;
            if (intTotMinutes >= 60) {
                intTempTotHours = (intTotMinutes / 60);
                if (IsDecimal(intTempTotHours.toFixed(2))) {
                    intTempHours = parseInt(intTempTotHours.toString().split(".")[0]);
                    intTempMinutes = parseInt(intTotMinutes) - parseInt(intTempHours * 60);
                    intTotHours = intTotHours + intTempHours;
                    displayTotalHours = 'Total: ' + intTotHours + ':' + intTempMinutes.toString() + ' Hours';
                }
            }
            else if (intTotMinutes > 0) {
                displayTotalHours = 'Total: ' + intTotHours + ':' + intTotMinutes.toString() + ' Hours';
            }
            else {
                displayTotalHours = 'Total: ' + intTotHours + ' Hours';
            }
            document.getElementById('dvTotHours').innerHTML = displayTotalHours;
        }

    </script>


</asp:Content>
