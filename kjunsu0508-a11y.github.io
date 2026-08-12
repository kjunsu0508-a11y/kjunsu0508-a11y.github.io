<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Time Remaining</title>

<style>
    * {
        box-sizing: border-box;
    }

    body {
        margin: 0;
        min-height: 100vh;

        display: flex;
        justify-content: center;
        align-items: center;

        font-family:
            Arial,
            Helvetica,
            sans-serif;

        color: white;

        background:
            radial-gradient(
                circle at 20% 20%,
                #243b55 0%,
                transparent 35%
            ),
            radial-gradient(
                circle at 80% 80%,
                #141e30 0%,
                transparent 40%
            ),
            #050505;

        overflow-x: hidden;
    }

    .container {
        width: min(1000px, 92%);
        padding: 45px;

        text-align: center;

        background: rgba(255,255,255,0.06);

        border: 1px solid rgba(255,255,255,0.12);

        border-radius: 30px;

        backdrop-filter: blur(20px);

        box-shadow:
            0 30px 80px rgba(0,0,0,0.5);
    }

    .title {
        font-size: 15px;

        letter-spacing: 8px;

        color: rgba(255,255,255,0.55);

        margin-bottom: 15px;
    }

    h1 {
        margin: 0 0 35px;

        font-size: clamp(35px, 6vw, 70px);

        letter-spacing: -2px;
    }

    .date-box {
        display: flex;

        justify-content: center;

        gap: 10px;

        flex-wrap: wrap;

        margin-bottom: 45px;
    }

    input {
        padding: 15px 18px;

        border: 1px solid rgba(255,255,255,0.2);

        border-radius: 12px;

        background: rgba(255,255,255,0.1);

        color: white;

        font-size: 17px;

        outline: none;
    }

    input:focus {
        border-color: rgba(255,255,255,0.7);
    }

    button {
        padding: 15px 25px;

        border: none;

        border-radius: 12px;

        background: white;

        color: black;

        font-size: 17px;

        font-weight: bold;

        cursor: pointer;

        transition: 0.2s;
    }

    button:hover {
        transform: translateY(-2px);

        box-shadow:
            0 8px 25px rgba(255,255,255,0.15);
    }

    .main {
        display: grid;

        grid-template-columns:
            repeat(4, 1fr);

        gap: 15px;
    }

    .card {
        padding: 25px 10px;

        border-radius: 20px;

        background:
            rgba(255,255,255,0.05);

        border:
            1px solid rgba(255,255,255,0.08);

        transition: 0.3s;
    }

    .card:hover {
        transform: translateY(-5px);

        background:
            rgba(255,255,255,0.09);
    }

    .number {
        font-size:
            clamp(30px, 5vw, 60px);

        font-weight: bold;

        letter-spacing: -2px;

        font-variant-numeric:
            tabular-nums;
    }

    .label {
        margin-top: 8px;

        font-size: 12px;

        letter-spacing: 3px;

        color:
            rgba(255,255,255,0.45);
    }

    .totals {
        margin-top: 25px;

        display: grid;

        grid-template-columns:
            repeat(3, 1fr);

        gap: 15px;
    }

    .total-card {
        padding: 20px;

        border-radius: 18px;

        background:
            rgba(255,255,255,0.025);

        border:
            1px solid rgba(255,255,255,0.06);
    }

    .total-number {
        font-size: clamp(22px, 3vw, 35px);

        font-weight: bold;

        font-variant-numeric:
            tabular-nums;
    }

    .message {
        margin-top: 30px;

        font-size: 20px;

        font-weight: bold;

        letter-spacing: 3px;
    }

    @media (max-width: 700px) {

        .container {
            padding: 30px 18px;
        }

        .main {
            grid-template-columns:
                repeat(2, 1fr);
        }

        .totals {
            grid-template-columns:
                1fr;
        }

        input,
        button {
            width: 100%;
        }
    }
</style>
</head>


<body>

<div class="container">

    <div class="title">
        TIME REMAINING
    </div>

    <h1>COUNTDOWN</h1>


    <div class="date-box">

        <input
            type="datetime-local"
            id="targetDate"
        >

        <button onclick="setTarget()">
            START
        </button>

    </div>


    <div class="main">

        <div class="card">
            <div
                class="number"
                id="years">
                0.0
            </div>

            <div class="label">
                YEARS
            </div>
        </div>


        <div class="card">
            <div
                class="number"
                id="months">
                0.0
            </div>

            <div class="label">
                MONTHS
            </div>
        </div>


        <div class="card">
            <div
                class="number"
                id="weeks">
                0.0
            </div>

            <div class="label">
                WEEKS
            </div>
        </div>


        <div class="card">
            <div
                class="number"
                id="days">
                0.0
            </div>

            <div class="label">
                DAYS
            </div>
        </div>


        <div class="card">
            <div
                class="number"
                id="hours">
                0.0
            </div>

            <div class="label">
                HOURS
            </div>
        </div>


        <div class="card">
            <div
                class="number"
                id="minutes">
                0.0
            </div>

            <div class="label">
                MINUTES
            </div>
        </div>


        <div class="card">
            <div
                class="number"
                id="seconds">
                0.0
            </div>

            <div class="label">
                SECONDS
            </div>
        </div>

    </div>


    <div class="totals">

        <div class="total-card">

            <div
                class="total-number"
                id="totalDays">
                0.0
            </div>

            <div class="label">
                TOTAL DAYS
            </div>

        </div>


        <div class="total-card">

            <div
                class="total-number"
                id="totalHours">
                0.0
            </div>

            <div class="label">
                TOTAL HOURS
            </div>

        </div>


        <div class="total-card">

            <div
                class="total-number"
                id="totalMinutes">
                0.0
            </div>

            <div class="label">
                TOTAL MINUTES
            </div>

        </div>

    </div>


    <div
        class="message"
        id="message">
    </div>

</div>


<script>

let target =
    localStorage.getItem(
        "countdownTarget"
    );


const input =
    document.getElementById(
        "targetDate"
    );


if (target) {

    const savedDate =
        new Date(target);

    if (!isNaN(savedDate.getTime())) {

        input.value =
            formatDateForInput(
                savedDate
            );
    }
}


function formatDateForInput(date) {

    const year =
        date.getFullYear();

    const month =
        String(
            date.getMonth() + 1
        ).padStart(2, "0");

    const day =
        String(
            date.getDate()
        ).padStart(2, "0");

    const hours =
        String(
            date.getHours()
        ).padStart(2, "0");

    const minutes =
        String(
            date.getMinutes()
        ).padStart(2, "0");

    return (
        year +
        "-" +
        month +
        "-" +
        day +
        "T" +
        hours +
        ":" +
        minutes
    );
}


function setTarget() {

    if (!input.value) {

        alert(
            "Please choose a target date and time."
        );

        return;
    }


    target =
        new Date(
            input.value
        ).toISOString();


    localStorage.setItem(
        "countdownTarget",
        target
    );


    updateCountdown();
}


function formatNumber(number) {

    return number.toLocaleString(
        "en-US",
        {
            minimumFractionDigits: 1,
            maximumFractionDigits: 1
        }
    );
}


function updateCountdown() {

    if (!target) return;


    const now =
        new Date();

    const targetDate =
        new Date(target);


    const difference =
        targetDate.getTime()
        -
        now.getTime();


    if (difference <= 0) {

        document
            .querySelectorAll(".number")
            .forEach(
                element => {
                    element.textContent =
                        "0.0";
                }
            );


        document
            .querySelectorAll(".total-number")
            .forEach(
                element => {
                    element.textContent =
                        "0.0";
                }
            );


        document.getElementById(
            "message"
        ).textContent =
            "TIME'S UP";

        return;
    }


    document.getElementById(
        "message"
    ).textContent = "";


    /*
        Total values
    */

    const totalSeconds =
        difference / 1000;

    const totalMinutes =
        totalSeconds / 60;

    const totalHours =
        totalMinutes / 60;

    const totalDays =
        totalHours / 24;

    const totalWeeks =
        totalDays / 7;


    /*
        Calendar-based
        years and months
    */

    let years =
        targetDate.getFullYear()
        -
        now.getFullYear();


    let months =
        targetDate.getMonth()
        -
        now.getMonth();


    let days =
        targetDate.getDate()
        -
        now.getDate();


    let hours =
        targetDate.getHours()
        -
        now.getHours();


    let minutes =
        targetDate.getMinutes()
        -
        now.getMinutes();


    let seconds =
        targetDate.getSeconds()
        -
        now.getSeconds();


    if (seconds < 0) {

        seconds += 60;

        minutes--;
    }


    if (minutes < 0) {

        minutes += 60;

        hours--;
    }


    if (hours < 0) {

        hours += 24;

        days--;
    }


    if (days < 0) {

        months--;

        const previousMonth =
            new Date(
                targetDate.getFullYear(),
                targetDate.getMonth(),
                0
            );

        days +=
            previousMonth.getDate();
    }


    if (months < 0) {

        months += 12;

        years--;
    }


    /*
        Display
    */

    document.getElementById(
        "years"
    ).textContent =
        formatNumber(years);


    document.getElementById(
        "months"
    ).textContent =
        formatNumber(months);


    document.getElementById(
        "weeks"
    ).textContent =
        formatNumber(totalWeeks);


    document.getElementById(
        "days"
    ).textContent =
        formatNumber(days);


    document.getElementById(
        "hours"
    ).textContent =
        formatNumber(hours);


    document.getElementById(
        "minutes"
    ).textContent =
        formatNumber(minutes);


    document.getElementById(
        "seconds"
    ).textContent =
        formatNumber(seconds);


    document.getElementById(
        "totalDays"
    ).textContent =
        formatNumber(totalDays);


    document.getElementById(
        "totalHours"
    ).textContent =
        formatNumber(totalHours);


    document.getElementById(
        "totalMinutes"
    ).textContent =
        formatNumber(totalMinutes);
}


updateCountdown();


setInterval(
    updateCountdown,
    1000
);

</script>

</body>
</html>
