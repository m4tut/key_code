<template>
  <div class="card">
    <div v-if="$slots.header" class="card__header">
      <slot name="header" />
    </div>

    <div class="card__main">
      <slot />
    </div>

    <div v-if="$slots.footer" class="card__footer">
      <slot name="footer" />
    </div>
  </div>
</template>

<script>
export default {
  name: 'AppCard'
}
</script>

<style lang="scss" scoped>
.card {
  display: grid;
  grid-template-rows: auto 1fr;
  color: $color-text-default;
  text-align: center;
  border-radius: 5px;
  overflow: hidden;
  box-shadow: 0 14px 26px rgba(0, 0, 0, 0.04);

  &__header {
    padding: 5px 10px;
    font-weight: 600;
    background-color: $color-background-accent;
    border-bottom: 1px solid $color-border-accent;
  }

  &__main {
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 24px;
    padding: 15px 10px;
    background-color: $color-background-default;
  }

  &__footer {
    padding: 5px 10px;
    background-color: mix(white, $color-background-primary, 90);
  }
}
</style>
