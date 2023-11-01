<script lang="ts">
	const settings = {
		prepare: 300,
		work: 20,
		rest: 10,
		cycles: 8,
		sets: 1
	};
</script>

<div class="mt-4 px-4">
	{#each Object.keys(settings) as key}
		<div class="flex justify-between">
			<label for={key}>{key}</label>
			<input type="number" id={key} bind:value={settings[key]} class="w-1/2" />
		</div>
	{/each}
</div>
