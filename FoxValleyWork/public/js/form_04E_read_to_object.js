//initialize the object
let form_04E = {
    emp_name : '',
    date_of_incident : '',
    time_of_incident : '',
    incident_location_specific : '',
    first_time_report : true,
    date_first_reported : null,
    time_first_reported : null,
    reported_to : null,
    how_incident_occurred : '',
    name_of_people_present : '',
    body_parts_injuryed : '',
    sought_medical_day_of : true,
    where_sought_medical : null,
    injured_previous : true,
    where_previous_injury : null,
    sought_treatment_previous_injury : null,
    emp_signature : false,
    today_date : '',
    when_injury_notification_received : null,
    injury_notification_received_by : null,
    receiver_signature : null
}

function formSubmission(){
    //get basic form input
    form_04E.emp_name = document.getElementById('employee-name').value
    form_04E.date_of_incident = document.getElementById('date-of-incident').value
    let rawTime = document.getElementById('time-of-incident').value
    form_04E.incident_location_specific = document.getElementById('location-of-accident').value
    let firstTime = document.getElementsByName('first-time-report')
    form_04E.date_first_reported = document.getElementById('date-first-reported').value
    let rawFirstTime = document.getElementById('time-first-reported').value
    form_04E.person_first_reported = document.getElementById('name-of-person-first-reported-to').value
    form_04E.how_incident_occurred = document.getElementById('how-did-incident-occur').value
    form_04E.name_of_people_present = document.getElementById('people-present').value
    form_04E.body_parts_injuryed = document.getElementById('parts-injured').value
    let soughtMedical = document.getElementsByName('sought-medical')
    form_04E.where_sought_medical = document.getElementById('sought-medical-yes-where').value
    let injuredPrevious = document.getElementsByName('previous-injury-radio')
    form_04E.where_previous_injury = document.getElementById('previous-injury-where').value
    form_04E.sought_treatment_previous_injury = document.getElementById('sought-medical-previous-where').value
    form_04E.emp_signature = document.getElementById('emp-signature').checked
    form_04E.today_date = document.getElementById('emp-date-signed').value
    form_04E.when_injury_notification_received = document.getElementById('date-received-on').value
    form_04E.injury_notification_received_by = document.getElementById('report-received-by').value
    form_04E.receiver_signature = document.getElementById('representative-signature').checked

    // handle time and radio buttons
    if (firstTime[0].checked){
        form_04.first_time_report = true
    }else if(firstTime[1].checked){
        form_04.first_time_report = false
    }

    if (soughtMedical[0].checked){
        form_04E.sought_medical = true
    }else if(soughtMedical[1].checked){
        form_04E.sought_medical = false
    }

    if (injuredPrevious[0].checked){
        form_04E.injured_previous = true
    }else if(injuredPrevious[1].checked){
        form_04E.injured_previous = false
    }

    rawTime = rawTime.split(' ')
    let timeHhMm = rawTime[0].split('/')
    let timeAmPm = rawTime[1]
    if (timeAmPm === 'p.m.'){
        timeHhMm[0] = parseInt(timeHhMm[0]) + 12
    }
    form_04E.time_first_reported = `${timeHhMm[0]}:${timeHhMm[1]}`;
    rawFirstTime = rawFirstTime.split(' ')
    let firstTimeHhMm = rawFirstTime[0].split('/')
    let firstTimeAmPm = rawFirstTime[1]
    if (firstTimeAmPm === 'p.m.'){
        firstTimeHhMm[0] = parseInt(firstTimeHhMm[0]) + 12
    }
    form_04E.time_first_reported = `${firstTimeHhMm[0]}:${firstTimeHhMm[1]}`;

    console.log(form_04E)
    alert('Form Submitted, Thank You')
    return false;

}