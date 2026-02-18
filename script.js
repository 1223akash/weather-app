async function fetchWeather() {
    let searchInput = document.getElementById("search").value;
    const weatherDataDiv = document.getElementById("weather-data");
    weatherDataDiv.style.display = "block";

    const apiKey = ""; // PASTE YOUR API KEY HERE
    if (apiKey === "") {
        console.error("API Key is missing!");
        alert("Error: API Key is missing. Please add your OpenWeatherMap API key to line 6 of script.js");
        return;
    }

    if (searchInput === "") {
        weatherDataDiv.innerHTML = `
        <div>
            <h2>Empty Input!</h2>
            <p>Please try again with a valid <b>city name</b>.</p>
        </div>
        `;
        return;
    }

    async function getLonAndLat() {
        const countryCode = 91;
        const geocodeURL = `https://api.openweathermap.org/geo/1.0/direct?q=${searchInput.replace(" ", "%20")},${countryCode}&limit=1&appid=${apiKey}`;

        const response = await fetch(geocodeURL);
        if (!response.ok) {
            console.log("Bad response! ", response.status);
            return;
        }

        const data = await response.json();

        if (data.length === 0) {
            console.log("Something went wrong here.");
            weatherDataDiv.innerHTML = `
            <div>
                <h2>Invalid Input: "${searchInput}"</h2>
                <p>Please try again with a valid <b>city name</b>.</p>
            </div>
            `;
            return;
        } else {
            return data[0];
        }
    }

    async function getWeatherData(lon, lat) {
        const weatherURL = `https://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lon}&appid=${apiKey}`;

        const response = await fetch(weatherURL);
        if (!response.ok) {
            console.log("Bad response! ", response.status);
            return;
        }

        const data = await response.json();

        weatherDataDiv.style.display = "flex";
        weatherDataDiv.innerHTML = `
        <img src="https://openweathermap.org/img/wn/${data.weather[0].icon}.png" alt="${data.weather[0].description}" width="100" />
        <div>
            <h2>${data.name}</h2>
            <p><strong>Temperature:</strong> ${Math.round(data.main.temp - 273.15)}°C</p>
            <p><strong>Description:</strong> ${data.weather[0].description}</p>
        </div>
        `;
    }

    document.getElementById("search").value = "";
    const geocodeData = await getLonAndLat();
    getWeatherData(geocodeData.lon, geocodeData.lat);
}