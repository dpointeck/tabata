<script lang="ts">
	const settings = {
		prepare: 40,
		work: 40,
		rest: 20,
		cycles: 4,
		sets: 2
	};

    $: cycleDuration = settings.work + settings.rest;
    $: setDuration = cycleDuration * settings.cycles;
    $: workoutDuration = setDuration * settings.sets;
    $: totalDuration = workoutDuration + settings.prepare;
</script>

<div class="mt-4 px-4">
	{#each Object.keys(settings) as key}
		<div class="flex justify-between">
			<label for={key}>{key}</label>
			<input type="number" id={key} bind:value={settings[key]} class="w-1/2" />
		</div>
	{/each}

    <div>
        {cycleDuration}
    </div>
    <div>
        {setDuration}
    </div>
    <div>
        {workoutDuration}
    </div>
    <div>
        {totalDuration}
    </div>
</div>
