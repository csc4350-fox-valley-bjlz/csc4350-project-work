// var express = require('express');
// const bodyParser = require("body-parser");
// var app = express();
// app.use( bodyParser.json() );       // to support JSON-encoded bodies
// app.use(bodyParser.urlencoded({     // to support URL-encoded bodies
//     extended: true
// }));
//initialize the object
let form_04 = {
    Agency_name : 'Fox Valley Special Recreation Association',
    Todays_Date : '00/00/0000',
    Date_of_Incident : '00/00/0000',
    Time_of_Incident : '00:00',
    Form_Completer_Name : '',
    Form_Completer_Title : '',
    Form_Completer_Phone : '',
    Form_Completer_Email : '',
    How_Incident_Occurred_Short : '',
    Incident_Location_Name : '',
    // Incident_Location_Address_yn : null,
    Incident_Location_Address : null,
    Incident_Location_City : null,
    Incident_Location_State : null,
    Incident_Location_Zip : null,
    Incident_Location_Specific : '',
    Incident_Primary_Location : '',
    Employer_FEIN : '',
    Employee_Miss_3_Consecutive_Days : null,
    What_Employee_Doing : '',
    How_Incident_Occurred_Detailed : '',
    Emp_Last_Name : '',
    Emp_First_Name : '',
    Emp_Address : '',
    Emp_City : '',
    Emp_State : '',
    Emp_Zip : '',
    Emp_Best_Contact_Number : '',
    Emp_Email : '',
    Emp_Social : '000-00-0000',
    Emp_DoB : '00/00/0000',
    Emp_Gender : '',
    Emp_Marital_Status : '',
    Emp_Num_Dependents : '',
    Emp_Speak_English : true,
    Emp_Avg_Week_Wage : '',
    Emp_Job : '',
    Emp_Employ_Status : '',
    Emp_Date_Hired : '00/00/0000',
    Emp_Tenure : '',
    Emp_Time_Began_Work_Incident : '',
    Last_Date_Worked_Prior_Incident : '',
    Emp_Incident_Date_Death : null,
    Incident_Occur_on_Premices : null,
    Injury_Illness : '',
    Description_of_Injury_Illness : '',
    Object_Substance_of_Harm : '',
    Emp_Seek_Medical_Attention : null,
    Treated_Away_From_Worksite : null,
    Treated_in_ER : null,
    Hospitalized_Overnight : null,
    Doc_Name : '',
    Doc_Address : null,
    Doc_City : null,
    Doc_State : null,
    Doc_Zip : null,
    Doc_Phone : null
}

function formSubmission(){
    //add the simple strings to the object (all but time, radio, check, etc.)
    form_04.Todays_Date = document.getElementById('todays-date').value
    form_04.Date_of_Incident = document.getElementById('time-of-incident').value
    form_04.Form_Completer_Name = document.getElementById('name-of-person-completing-report').value
    form_04.Form_Completer_Title = document.getElementById('title-of-person-completing-report').value
    form_04.Form_Completer_Phone = document.getElementById('business-phone-number').value
    form_04.Form_Completer_Email = document.getElementById('business-email').value
    form_04.How_Incident_Occurred_Short = document.getElementById('how-did-incident-occur').value
    form_04.Incident_Location_Name = document.getElementById('name-of-location').value
    form_04.Incident_Location_Address = document.getElementById('incident-address').value
    form_04.Incident_Location_City = document.getElementById('incident-city').value
    form_04.Incident_Location_State = document.getElementById('incident-state').value
    form_04.Incident_Location_Zip = document.getElementById('incident-zip').value
    form_04.Incident_Location_Specific = document.getElementById('specific-location').value
    form_04.Incident_Primary_Location = document.getElementById('primary-location').value
    form_04.Employer_FEIN = document.getElementById('employer-FEIN').value
    form_04.What_Employee_Doing = document.getElementById('what-emp-doing-during-accident').value
    form_04.How_Incident_Occurred_Detailed = document.getElementById('how-incident-occur').value
    form_04.Emp_Last_Name = document.getElementById('emp-last-name').value
    form_04.Emp_First_Name = document.getElementById('emp-first-name').value
    form_04.Emp_Address = document.getElementById('emp-address').value
    form_04.Emp_City = document.getElementById('emp-city').value
    form_04.Emp_State = document.getElementById('emp-state').value
    form_04.Emp_Zip = document.getElementById('emp-zip').value
    form_04.Emp_Best_Contact_Number = document.getElementById('emp-best-phone').value
    form_04.Emp_Email = document.getElementById('emp-email').value
    form_04.Emp_Social = document.getElementById('emp-social').value
    form_04.Emp_DoB = document.getElementById('emp-DoB').value
    form_04.Emp_Avg_Week_Wage = document.getElementById('emp-avg-week-wage').value
    form_04.Emp_Job = document.getElementById('emp-job-title-occupation').value
    form_04.Emp_Num_Dependents = document.getElementById('emp-num-dependents').value
    form_04.Emp_Marital_Status = document.getElementById('emp-marital-status').value
    form_04.Emp_Date_Hired = document.getElementById('emp-date-hired').value
    form_04.Emp_Time_Began_Work_Incident = document.getElementById('emp-time-began-work').value
    form_04.Last_Date_Worked_Prior_Incident = document.getElementById('emp-last-date-worked').value
    if ((document.getElementById('emp-death-date')).value !== null || (document.getElementById('emp-death-date')).value !== '' || (document.getElementById('emp-death-date')).value !== undefined){
        form_04.Emp_Incident_Date_Death = document.getElementById('emp-death-date').value
    }
    form_04.Description_of_Injury_Illness = document.getElementById('injury-illness-description').value
    form_04.Object_Substance_of_Harm = document.getElementById('object-substance-of-harm').value
    form_04.Doc_Name = document.getElementById('treater-room-name').value
    form_04.Doc_Address = document.getElementById('treater-room-address').value
    form_04.Doc_City = document.getElementById('treater-room-city').value
    form_04.Doc_State = document.getElementById('treater-room-state').value
    form_04.Doc_Zip = document.getElementById('treater-room-zip').value
    form_04.Doc_Phone = document.getElementById('treater-room-phone').value

    //handle radio button input
    //let incidentLocationYN = document.getElementsByName('address-available-radio');
    let miss3DayYN = document.getElementsByName('3-day-miss-radio');
    let gender = document.getElementsByName('gender-radio');
    let englishYN = document.getElementsByName('english-radio');
    let empStatus = document.getElementsByName('employ-status-radio');
    let empTenure = document.getElementsByName('employ-tenure-radio');
    let onPremise = document.getElementsByName('incident-on-premise-radio');
    let injuryIllness = document.getElementsByName('injury-illness-radio');
    let soughtMedical = document.getElementsByName('emp-sought-medical-radio');
    let treatmentAway = document.getElementsByName('emp-treatment-away-radio');
    let emergencyRoom = document.getElementsByName('emergency-room-radio');
    let outpatientOvernight = document.getElementsByName('outpatient-overnight-radio');

    // if (incidentLocationYN[0].checked){
    //     form_04.Incident_Location_Address_yn = true
    // }else if(incidentLocationYN[1]){
    //     form_04.Incident_Location_Address_yn = false
    // }else if(incidentLocationYN[2] || incidentLocationYN === undefined){
    //     form_04.Incident_Location_Address_yn = null
    // }

    if (miss3DayYN[0].checked){
        form_04.Employee_Miss_3_Consecutive_Days = true
    }else if(miss3DayYN[1].checked){
        form_04.Employee_Miss_3_Consecutive_Days = false
    }else if(miss3DayYN[2].checked || miss3DayYN === undefined){
        form_04.Employee_Miss_3_Consecutive_Days = null
    }

    if (englishYN[0].checked){
        form_04.Emp_Speak_English = true
    }else if(englishYN[1].checked){
        form_04.Emp_Speak_English = false
    }



    if (gender[0].checked){
        form_04.Emp_Gender = 'male'
    }else if(gender[1].checked){
        form_04.Emp_Gender = 'female'
    }else if(gender === undefined){
        form_04.Emp_Gender = 'unspecified'
    }

    if (empStatus[0].checked){
        form_04.Emp_Employ_Status = 'permanent full time'
    }else if(empStatus[1].checked){
        form_04.Emp_Employ_Status = 'part-time'
    }else if(empStatus[2].checked){
        form_04.Emp_Employ_Status = 'seasonal'
    }else if(empStatus[3].checked){
        form_04.Emp_Employ_Status = 'intern'
    }else if(empStatus[4].checked){
        form_04.Emp_Employ_Status = 'other'
    }else if(empStatus === undefined){
        form_04.Emp_Employ_Status = ''
    }

    if (empTenure[0].checked){
        form_04.Emp_Tenure = 'less than 1 year'
    }else if(empTenure[1].checked){
        form_04.Emp_Tenure = '1-3 years'
    }else if(empTenure[2].checked){
        form_04.Emp_Tenure = '4-10 years'
    }else if(empTenure[3].checked){
        form_04.Emp_Tenure = '11-19 years'
    }else if(empTenure[4].checked){
        form_04.Emp_Tenure = '20 plus years'
    }else if(empTenure === undefined){
        form_04.Emp_Tenure = ''
    }

    if (onPremise[0].checked){
        form_04.Incident_Occur_on_Premices = true
    }else if(onPremise[1].checked){
        form_04.Incident_Occur_on_Premices = false
    }else if(onPremise[2].checked || onPremise === undefined){
        form_04.Incident_Occur_on_Premices = null
    }

    if (injuryIllness[0].checked){
        form_04.Injury_Illness = 'Injury'
    }else if(injuryIllness[1].checked || injuryIllness === undefined){
        form_04.Injury_Illness = 'Illness'
    }

    if (soughtMedical[0].checked){
        form_04.Emp_Seek_Medical_Attention = true
    }else if(soughtMedical[1].checked){
        form_04.Emp_Seek_Medical_Attention = false
    }else if(soughtMedical[2].checked || soughtMedical === undefined){
        form_04.Emp_Seek_Medical_Attention = null
    }

    if (treatmentAway[0].checked){
        form_04.Treated_Away_From_Worksite = true
    }else if(treatmentAway[1].checked){
        form_04.Treated_Away_From_Worksite = false
    }else if(treatmentAway[2].checked || treatmentAway === undefined){
        form_04.Treated_Away_From_Worksite = null
    }

    if (emergencyRoom[0].checked){
        form_04.Treated_in_ER = true
    }else if(emergencyRoom[1].checked){
        form_04.Treated_in_ER = false
    }else if(emergencyRoom[2].checked || emergencyRoom === undefined){
        form_04.Treated_in_ER = null
    }

    if (outpatientOvernight[0].checked){
        form_04.Hospitalized_Overnight = true
    }else if(outpatientOvernight[1].checked){
        form_04.Hospitalized_Overnight = false
    }else if(outpatientOvernight[2].checked || outpatientOvernight === undefined){
        form_04.Hospitalized_Overnight = null
    }

    //handle time inputs
    let incidentTime = ((document.getElementById('time-of-incident')).value).split(' ')
    let incidentHhMm = incidentTime[0].split('/')
    let incidentAmPm = incidentTime[1]
    if (incidentAmPm === 'p.m.'){
        incidentHhMm[0] = parseInt(incidentHhMm[0]) + 12
    }
    form_04.Time_of_Incident = `${incidentHhMm[0]}:${incidentHhMm[1]}`;
    let startTime = ((document.getElementById('emp-time-began-work')).value).split(' ')
    let startHhMm = startTime[0].split('/')
    let startAmPm = startTime[1]
    if (startAmPm === 'p.m.'){
        startHhMm[0] = parseInt(startHhMm[0]) + 12
    }
    form_04.Emp_Time_Began_Work_Incident = `${startHhMm[0]}:${startHhMm[1]}`;



    // console.log(form_04)
    alert('Form Submitted, Thank You')
    return false
}

// module.exports = form_04;


