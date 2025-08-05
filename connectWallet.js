const fetch = require('node-fetch');

async function getCryptoPrice(coinId) {
    const url = `https://api.coingecko.com/api/v3/simple/price?ids=${coinId}&vs_currencies=usd`;
    const response = await fetch(url);
    const data = await response.json();
    console.log(`${coinId.toUpperCase()} Price: $${data[coinId].usd}`);
}

getCryptoPrice('bitcoin');
