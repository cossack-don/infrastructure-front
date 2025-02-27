<template>
  <div>
  {{data.message}}
  </div>
</template>

<script setup>
// const { data, error } = await useFetch('http://localhost:3000/server-api/test')
// console.log(data.value)
const { data, error } = await useFetch('/api/hello')
console.log(data.value)

onMounted( () => {
  fetch('http://localhost:4000/').then((res) => res.json()).then((res) => console.log(res))
})
// if (error.value) {
//   console.error('Error fetching data:', error.value)
// }
//
// if (!data.value) {
//   console.warn('Data is null or undefined')
// }
</script>