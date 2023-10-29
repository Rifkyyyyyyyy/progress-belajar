const express = require('express');
const app = express();
const port = 3000;
const axios = require('axios');

// bua be nya,ntar ditangkep make dart

app.get('/api/pokemon', async (req, res) => {
  try {
    const response = await axios.get('https://pokeapi.co/api/v2/pokemon/pikachu');

    if (response.status === 200) {

      const jsonData = response.data;
      const firstPokemon = jsonData.forms[0];
      res.json(firstPokemon);
    } else {
      throw new Error(`Request failed with status: ${response.status}`);
    }
  } catch (err) {
    console.error(`An error occurred: ${err}`);
    res.status(500).json({ error: 'Internal server error' });
  }
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});


